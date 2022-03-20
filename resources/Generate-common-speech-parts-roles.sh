#! /bin/zsh

# The code below assumes that the Raku package Grammar::TokenProcessing is installed.
# It is assumed that this script is executed in the top directory DSL::Shared .

# Process English template
echo 'Process English template'

cd ./lib/DSL/Shared/Roles/English
AddFuzzyMatching -o=./CommonSpeechParts.rakumod --add-protos --sym-name=English --add-exclusions ./CommonSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Bulgarian template
echo 'Process Bulgarian template'

cd ./lib/DSL/Shared/Roles/Bulgarian
AddFuzzyMatching -o=./CommonSpeechParts.rakumod --/add-protos --sym-name=Bulgarian --add-exclusions --func-name=is-bg-fuzzy-match ./CommonSpeechParts-template

# Go back to the top directory
cd ../../../../../