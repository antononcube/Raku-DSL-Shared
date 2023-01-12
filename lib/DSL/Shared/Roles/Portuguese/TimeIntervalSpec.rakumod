use v6;

# The first version of this role/grammar was made in 2011 using Mathematica and ENBF.
# See this file:
#   https://github.com/antononcube/ConversationalAgents/blob/master/Packages/WL/EBNFGrammarToRakuPerl6.m

use DSL::Shared::Roles::English::TimeIntervalSpeechParts;
use DSL::Shared::Roles::English::TimeIntervalSpec;
use DSL::Shared::Roles::Portuguese::TimeIntervalSpeechParts;

role DSL::Shared::Roles::Portuguese::TimeIntervalSpec
        does DSL::Shared::Roles::Portuguese::TimeIntervalSpeechParts
        does DSL::Shared::Roles::English::TimeIntervalSpec {

}