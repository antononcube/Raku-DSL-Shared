#! /bin/zsh

# The code below assumes that the Raku package Grammar::TokenProcessing is installed.
# It is assumed that this script is executed in the top directory of DSL::Shared .

# Process English template
echo 'Process English time interval speech parts template'

cd ./lib/DSL/Shared/Roles/English

add-token-fuzzy-matching -o=./TimeIntervalSpeechParts.rakumod --add-protos --sym-name=English --add-exclusions ./TimeIntervalSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Bulgarian template
echo 'Process Bulgarian time interval speech parts template'

cd ./lib/DSL/Shared/Roles/Bulgarian

add-token-fuzzy-matching -o=./TimeIntervalSpeechParts.rakumod --/add-protos --sym-name=Bulgarian --add-exclusions --func-name=is-fuzzy-match ./TimeIntervalSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Portuguese template
echo 'Process Portuguese time interval speech parts template'

cd ./lib/DSL/Shared/Roles/Portuguese

add-token-fuzzy-matching -o=./TimeIntervalSpeechParts.rakumod --/add-protos --sym-name=Portuguese --add-exclusions --func-name=is-pt-fuzzy-match ./TimeIntervalSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Russian template
echo 'Process Russian time interval speech parts template'

cd ./lib/DSL/Shared/Roles/Russian

add-token-fuzzy-matching -o=./TimeIntervalSpeechParts.rakumod --/add-protos --sym-name=Russian --add-exclusions --func-name=is-ru-fuzzy-match ./TimeIntervalSpeechParts-template

# Go back to the top directory
cd ../../../../../