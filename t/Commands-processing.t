use Test;

use lib './lib';
use lib '.';

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


##===========================================================
## Example definitions
##===========================================================

sub ToExampleWorkflowCode($command, *%args) {
    DSL::Shared::Utilities::CommandProcessing::ToWorkflowCode($command,
                                                              grammar => ExampleGrammar,
                                                              actions => ExampleActions,
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

plan 6;

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
        'interpretting "\n" separated commands into a string-code with a Whatever splitter';

## 6
is-deeply ToExampleWorkflowCode($command0, format => 'hash', splitter => Whatever),
        { :CODE("use recommender smrObj |>\nrecommend by profile Groceries |>\njoin across with dfMint by column ID |>\nEcho[obj]"),
          :DSLTARGET("R-SMRMon"),
          :SETUPCODE("SetItUp[]"),
          :USERID("kdkwe823") },
        'interpretting "\n" separated commands into a string-code with a Whatever splitter';


done-testing;
