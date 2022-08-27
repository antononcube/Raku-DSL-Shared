#!/usr/bin/env perl6

# Relevant part taken from:
# https://rosettacode.org/wiki/Finite_state_machine#Raku

use lib './lib';
use lib '.';

use DSL::Shared::FiniteStateMachines::CoreFSM;

#===== Usage example: Console-based vending machine =====#

my DSL::Shared::FiniteStateMachines::CoreFSM $machine .= new;

$machine.choose-transition = sub (*@transitions) {
    say "[{.key + 1}] {.value.id}" for @transitions.pairs;
    loop {
        my $n = val get;
        return @transitions[$n - 1] if $n ~~ Int && $n ~~ 1..@transitions;
        say "Invalid input; try again.";
    }
}

$machine.add-state("ready",     { say "Please deposit coins.";                     });
$machine.add-state("waiting",   { say "Please select a product.";                  });
$machine.add-state("dispense",  { sleep 2; say "Please remove product from tray."; });
$machine.add-state("refunding", { sleep 1; say "Refunding money...";               });
$machine.add-state("exit",      { say "Shutting down...";                          });

$machine.add-transition("ready",     "quit",    "exit");
$machine.add-transition("ready",     "deposit", "waiting");
$machine.add-transition("waiting",   "select",  "dispense");
$machine.add-transition("waiting",   "refund",  "refunding");
$machine.add-transition("dispense",  "remove",  "ready");
$machine.add-transition("refunding",            "ready");

$machine.run("ready");