
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Actions::English::WL::PipelineCommand;

use DSL::Shared::Utilities::CommandProcessing;

##===========================================================
## Grammars and actions
##===========================================================

grammar ExampleGrammar
        does DSL::Shared::Roles::English::PipelineCommand {

    rule TOP {
        <pipeline-command>       ||
        <generic-command>
    }

    rule generic-command { .*  }
}

class ExampleActions
        is DSL::Shared::Actions::English::WL::PipelineCommand {

    method separator() {
        " |>\n"
    }
    method TOP($/) {
        make $/.values[0].made;
    }
    method generic-command($/) {
        make $/.Str
    }
    method setup-code-command($/) {
        make 'SETUPCODE' => 'SetItUp[]'
    }
}

class ExampleUserActions is ExampleActions {

    has Str $.userID;

    method makeUserIDTag() {
        ( ! $.userID.defined or $.userID.chars == 0 or $.userID (elem) <NONE NULL>) ?? '' !! '"UserID:' ~ $.userID ~ '"';
    }
    method generic-command($/) {
        make $/.Str ~ ( self.makeUserIDTag() ?? ' for ' !! '') ~ self.makeUserIDTag()
    }
}

##===========================================================
## Target rules
##===========================================================

my %targetToAction{Str} =
        'R-SMRMon' => ExampleUserActions,
        'Type1' => ExampleActions,
        'Type2' => ExampleUserActions;

my Str %targetToSeparator{Str} =
        'R-SMRMon' => " %>%\n",
        'Type1'    => " ==>\n",
        'Type2'    => " ==>\n";

##===========================================================
## Example definitions
##===========================================================

# Using the basic call signature of ToWorkflowCode
sub ToExampleWorkflowCode($command, *%args) {
    DSL::Shared::Utilities::CommandProcessing::ToWorkflowCode($command,
                                                              grammar => ExampleGrammar,
                                                              actions => ExampleActions,
                                                              |%args)
}

# Using the extended ("original") call signature of ToWorkflowCode
sub ToExampleUserWorkflowCode($command, $target, *%args) {
    DSL::Shared::Utilities::CommandProcessing::ToWorkflowCode($command,
                                                              grammar => ExampleGrammar,
                                                              :%targetToAction,
                                                              :%targetToSeparator,
                                                              :$target,
                                                              |%args)
}

##===========================================================
## Example commands
##===========================================================

my $command0 = '
DSL TARGET R-SMRMon
use recommender smrObj
recommend by profile Groceries
join across with dfMint by column ID
echo pipeline value
include setup code
USER ID kdkwe823
';

my $command1 = $command0.subst("\n", ";\n"):g;

my $command2 = $command0.subst("\n", " # \n"):g;


use Test;

plan 8;

##-----------------------------------------------------------
## Splitters tests
##-----------------------------------------------------------

## 1
isa-ok ToExampleWorkflowCode($command0, format => 'hash', splitter => Whatever),
        Hash,
        'interpretting "\n" separated commands into a hash with a Whatever splitter';

## 2
isa-ok ToExampleWorkflowCode($command1, format => 'hash', splitter => Whatever),
        Hash,
        'interpretting ";" separated commands into a hash with a Whatever splitter';

## 3
isa-ok ToExampleWorkflowCode($command2, format => 'hash', splitter => '#'),
        Hash,
        'interpretting " # " separated commands into a hash with a string splitter';

## 4
isa-ok ToExampleWorkflowCode($command2, format => 'hash', splitter => rx/ '#' "\n" /),
        Hash,
        'interpretting " # " separated commands into a hash with a regex splitter';

##-----------------------------------------------------------
## Format tests
##-----------------------------------------------------------

## 5
is ToExampleWorkflowCode($command1, format => 'code', splitter => Whatever),
        "use recommender smrObj |>\nrecommend by profile Groceries |>\njoin across with dfMint by column ID |>\nEcho[obj]",
        'equivalence for interpretting into a code-string';;

## 6
## Note that here we test is the separator defined in the actions class used in the interpreted result.
## The CODE pair should be equivalent:
##   :CODE("use recommender smrObj |>\nrecommend by profile Groceries |>\njoin across with dfMint by column ID |>\nEcho[obj]")
is-deeply ToExampleWorkflowCode($command0, format => 'hash', splitter => Whatever),
        { :CODE( ($command0.split("\n").Array)[ 2..^(*-3) ].join( ExampleActions.separator() ).subst('echo pipeline value', 'Echo[obj]') ),
          :DSLTARGET("R-SMRMon"),
          :SETUPCODE("SetItUp[]"),
          :USERID("kdkwe823") },
        'deep equivalence for interpretting into a hash';

##-----------------------------------------------------------
## Action classes with user fields tests
##-----------------------------------------------------------

## 7
## (1) Note that 'Type1' corresponds to an actions class without userID field;
##     in the test below the actions class ExampleUserActions is picked because 'R-SMRMon'
##     is specified in the string of commands.
## (2) See how ExampleUserActions.generic-command is defined.
##     The CODE pair should be equivalent:
##       :CODE("use recommender smrObj for \"UserID:kdkwe823\" \%>\%\nrecommend by profile Groceries for \"UserID:kdkwe823\" \%>\%\njoin across with dfMint by column ID for \"UserID:kdkwe823\" \%>\%\nEcho[obj]"),
is-deeply ToExampleUserWorkflowCode($command0, 'Type1', format => 'hash', splitter => Whatever),
        {:CODE( ($command0.split("\n").Array)[ 2..^(*-3) ].map({ $_ ~ ' for ' ~ '"UserID:kdkwe823"'}).join( %targetToSeparator<R-SMRMon> ).subst( / 'echo pipeline value' .* /, 'Echo[obj]') ),
         :DSLTARGET("R-SMRMon"),
         :SETUPCODE("SetItUp[]"),
         :USERID("kdkwe823")},
        'expected result for actions classes with user ID fields';

## 8
is ToExampleUserWorkflowCode($command0, 'Type1', format => 'hash', splitter => Whatever),
        ToExampleUserWorkflowCode($command1, 'Type1', format => 'hash', splitter => Whatever),
        'interpretation equivalence for actions classes with user ID fields';

done-testing;
