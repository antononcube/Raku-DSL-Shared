#!/usr/bin/env raku
use v6.d;

#use soft;
use Lingua::NumericWordForms;
use Lingua::NumericWordForms::Roles::English::WordedNumberSpec;

use DSL::Shared::Roles::ErrorHandling;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::English::PipelineCommand;
use DSL::Shared::Utilities::FuzzyMatching;

# Comment this out in order to see the parsing of the misspelled statement below.
&is-fuzzy-match.wrap( sub (*@args, *%args) { return False } );

my grammar TimeStatement
        does Lingua::NumericWordForms::Roles::English::WordedNumberSpec
        does DSL::Shared::Roles::English::TimeIntervalSpec
        does DSL::Shared::Roles::English::PipelineCommand {
    regex TOP { <time-interval-spec> }
}

my sub time-specs(Str:D $txt) {
    return do with $txt.match( /<TimeStatement::TOP>/, :g) { $/».Str };
}

# Works, because properly spelled
say time-specs('between Monday and Thursday');

# Does not work
say time-specs('betwen Monday and Thursday');
