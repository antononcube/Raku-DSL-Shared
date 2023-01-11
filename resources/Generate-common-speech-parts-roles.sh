#! /bin/zsh

# The code below assumes that the Raku package Grammar::TokenProcessing is installed.
# It is assumed that this script is executed in the top directory of DSL::Shared .

# Process English template
echo 'Process English common speech parts template'

cd ./lib/DSL/Shared/Roles/English
add-token-fuzzy-matching -o=./CommonSpeechParts.rakumod --add-protos --sym-name=English --add-exclusions ./CommonSpeechParts-template

echo 'Process English time interval speech parts template'

add-token-fuzzy-matching -o=./TimeIntervalSpeechParts.rakumod --add-protos --sym-name=English --add-exclusions ./TimeIntervalSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Bulgarian template
echo 'Process Bulgarian template'

cd ./lib/DSL/Shared/Roles/Bulgarian
add-token-fuzzy-matching -o=./CommonSpeechParts.rakumod --/add-protos --sym-name=Bulgarian --add-exclusions --func-name=is-bg-fuzzy-match ./CommonSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Portuguese template
echo 'Process Portuguese template'

cd ./lib/DSL/Shared/Roles/Portuguese
add-token-fuzzy-matching -o=./CommonSpeechParts.rakumod --/add-protos --sym-name=Portuguese --add-exclusions --func-name=is-fuzzy-match ./CommonSpeechParts-template

# Go back to the top directory
cd ../../../../../

# Process Russian template
echo 'Process Russian template'

cd ./lib/DSL/Shared/Roles/Russian
add-token-fuzzy-matching -o=./CommonSpeechParts.rakumod --/add-protos --sym-name=Russian --add-exclusions --func-name=is-ru-fuzzy-match ./CommonSpeechParts-template

# Go back to the top directory
cd ../../../../../