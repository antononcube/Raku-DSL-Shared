#===========================================================
# Original version taken from
#   https://rosettacode.org/wiki/Finite_state_machine#Raku
# The original version was programmed in Wolfram Language (WL),
# in order to implement Data Acquisition functionalities.
# See
#   https://github.com/antononcube/ConversationalAgents/blob/master/Packages/WL/OOPFiniteStateMachine.m
#===========================================================

#-----------------------------------------------------------
class DSL::Shared::FiniteStateMachines::State {...}
class DSL::Shared::FiniteStateMachines::Transition {...}

#-----------------------------------------------------------
class DSL::Shared::FiniteStateMachines::State {
    has Str $.id;
    has &.action;
    has Str $.implicitNext is rw;
    has DSL::Shared::FiniteStateMachines::Transition @.explicitNext;

    method Str {
        return self.gist
    }

    method gist {
        return "State object < id => {$!id}, action => {self.action ?? self.action.raku !! 'None'} >";
    }

}

#-----------------------------------------------------------
class DSL::Shared::FiniteStateMachines::Transition {
    has Str $.id;
    has Str $.to;

    method Str {
        return self.gist
    }

    method gist {
        return "Transition object < id => {:$!id}, to => {:$!to} >"
    }
}

#-----------------------------------------------------------
class DSL::Shared::FiniteStateMachines::CoreFSM {

    has DSL::Shared::FiniteStateMachines::State %.states;
    has Str $.currentStateID;
    has &.choose-transition is rw;

    has &.ECHOLOGGING is rw = &say;

    #------------------------------------------------------
    method add-state(Str $id, &action) {
        %!states{$id} = DSL::Shared::FiniteStateMachines::State.new(:$id, :&action);
    }

    #------------------------------------------------------
    multi method add-transition(Str $from, Str $to) {
        %!states{$from}.implicitNext = $to;
    }

    #------------------------------------------------------
    multi method add-transition(Str $from, Str $id, Str $to) {
        %!states{$from}.explicitNext.push: DSL::Shared::FiniteStateMachines::Transition.new(:$id, :$to);
    }

    #------------------------------------------------------
    method run(Str $initID, $inputs is copy = Whatever, UInt $maxLoops = 40) {

        # Verify arguments
        if $inputs.isa(List) { $inputs = $inputs.Array }

        if not ($inputs.isa(Whatever) or $inputs ~~ Array) {
            die "The second argument is expected to be an Array or Whatever.";
        }

        if %!states{$initID}:!exists {
            note "Unknown initial state ID: $initID .";
            return Nil;
        }

        # Initial states
        my Str $stateID = $initID;
        my $state = %!states{$initID};

        # Loop to process a sequence of inputs (given or manually entered)
        &!ECHOLOGGING("Run: Main loop...");
        my $k = 0;
        while $k < $maxLoops && ( !$inputs.isa(Array) || $inputs.elems > 0 ) {
            $k++;

            &!ECHOLOGGING("\t", '$state.id' => $state.id );
            &!ECHOLOGGING("\t", '$state.Str' => $state.Str );

            # Execute the action
            $state.action.(self);

            if so $state.implicitNext {
                # Switch with implicit state

                &!ECHOLOGGING( "\t", '$state.implicitNext => ', $state.implicitNext);
                $stateID = $state.implicitNext;
                $state = %!states{$stateID};

            } elsif $state.explicitNext and $state.explicitNext.elems > 0 {
                # Switch to explicit state

                &!ECHOLOGGING("\t", '$state.explicitNext.Str' => $state.explicitNext.raku );
                &!ECHOLOGGING("\t", '$inputs.Str' => $inputs.raku );

                if $inputs.isa(Array) {
                    # Input sequence is specified
                    # Note that the loop condition checks if $inputs.elems > 0 holds

                    $stateID = self.choose-transition($state.id, $inputs.shift);
                    &!ECHOLOGGING("\t" , "new ", '$stateID' => $stateID );

                } else {
                    # User input is expected

                    $stateID = self.choose-transition( $state.id, Whatever)
                }

                $state = %!states{$stateID}

            } else {
                $!currentStateID = $state.id;
                return True;
            }

            &!ECHOLOGGING("\tloop cycle end : ", '$inputs.Str' => ($inputs.isa(Whatever) ?? 'Whatever' !! $inputs.Str) );
            &!ECHOLOGGING("\tloop cycle end : ", '$state.Str' => $state.Str );
            &!ECHOLOGGING("\tloop cycle end : ", '$state.implicitNext.so' => $state.implicitNext.so );
        }
        &!ECHOLOGGING("Run: ...DONE");

        # If inputs were specified using the last obtained state go through the implicit states
        if $inputs.isa(Array) {
            &!ECHOLOGGING("Run: Post loop implicit states run...");

            $state.action.(self);
            while $state.implicitNext {
                $stateID = $state.implicitNext;
                $state = %!states{$stateID};
                $state.action.(self);

                &!ECHOLOGGING("\t", '$stateID' => $stateID);
            }

            &!ECHOLOGGING("Run: ...DONE")
        }

        $!currentStateID = $state.id;
        return True;
    }

    #------------------------------------------------------
    multi method choose-transition(*@transitions --> Str) {
        say "[{.key + 1}] {.value.id}" for @transitions.pairs;
        loop {
            my $n = val get;
            return @transitions[$n - 1].to if $n ~~ Int && $n ~~ 1..@transitions;
            say "Invalid input; try again.";
        }
    }

    multi method choose-transition(Str $stateID, $input is copy = Whatever, UInt $maxLoops = 40 --> Str) {

        my $n;
        my @transitions = %!states{$stateID}.explicitNext;

        say "[{.key + 1}] {.value.id}" for @transitions.pairs;

        my $k = 0;
        while $k < $maxLoops {
            $k++;

            if $input.isa(Whatever) {
                $n = val get;
            } else {
                $n = $input;
            }

            say "ChooseTransition: Selection ", (:$n);

            if $n ~~ Int && $n ~~ 1..@transitions {
                return @transitions[$n - 1].to;
            } else {
                say "Invalid input; try again. (One of {(1..^(@transitions.elems+1)).Str}.)";
            }
        }

        &!ECHOLOGGING("ChoseTransition: Reached $maxLoops -- giving up!");
        warn("ChoseTransition: Reached $maxLoops -- giving up!");

        return @transitions[0].to;
    }
}