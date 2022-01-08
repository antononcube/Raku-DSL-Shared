#============================================================
# Original version taken from
#   https://rosettacode.org/wiki/Finite_state_machine#Raku
# The original version was programmed in Wolfram Language (WL),
# in order to implement Data Acquisition functionalities.
# See
#   https://github.com/antononcube/ConversationalAgents/blob/master/Packages/WL/OOPFiniteStateMachine.m
#============================================================

class DSL::Shared::FiniteStateMachines::ExampleFSM {
    class State {...}
    class Transition {...}

    has State %!state;
    has &.choose-transition is rw;

    method add-state(Str $id, &action)
    {
        %!state{$id} = State.new(:$id, :&action);
    }

    multi method add-transition(Str $from, Str $to)
    {
        %!state{$from}.implicit-next = %!state{$to};
    }

    multi method add-transition(Str $from, $id, Str $to)
    {
        %!state{$from}.explicit-next.push: Transition.new(:$id, to => %!state{$to});
    }

    method run(Str $initial-state)
    {
        my $state = %!state{$initial-state};

        loop {
            $state.action.();
            if $state.implicit-next -> $_ { $state = $_; }
            elsif $state.explicit-next -> $_ { $state = &.choose-transition.(|$_).to; }
            else { last; }
        }
    }

    class Transition {
        has $.id;
        has State $.to;
    }
    class State {
        has $.id;
        has &.action;
        has State $.implicit-next is rw;
        has Transition @.explicit-next;
    }
}