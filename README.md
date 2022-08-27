# Raku DSL::Shared

This repository provides a Raku package for shared utilities and (grammar) roles 
for family of packages that translate Domains Specific Languages (DSLs) into executable
programming languages code. (Also natural languages.)

Preliminary versions of the code in this repository can be found in the GitHub repository [AAr1].

The initial, "core" packages that use "DSL::Shared" are:

- ["DSL::English::ClassificationWorkflows"](https://github.com/antononcube/Raku-DSL-English-ClassificationWorkflows), [AAp4]

- ["DSL::English::DataQueryWorkflows"](https://github.com/antononcube/Raku-DSL-English-DataQueryWorkflows), [AAp5]

- ["DSL::English::LatentSemanticAnalysisWorkflows"](https://github.com/antononcube/Raku-DSL-English-LatentSemanticAnalysisWorkflows), [AAp6]

- ["DSL::English::QuantileRegressionWorkflows"](https://github.com/antononcube/Raku-DSL-English-QuantileRegressionWorkflows), [AAp7]

- ["DSL::English::RecommenderWorkflows"](https://github.com/antononcube/Raku-DSL-English-RecommenderWorkflows), [AAp8]

The package "DSL::Bulgarian", [AAp1], extends the English grammar based DSLs by providing 
Bulgarian language *tokens* that correspond to the English tokens. 

------

## Installation

Zef ecosystem:

```shell
zef install DSL::Shared
```

GitHub :

```shell
zef install https://github.com/antononcube/Raku-DSL-Shared.git
```

-------

## Roles to share

One of the main reason for making this package is to encapsulate and easily share grammar roles for making DSL translators.

Here is a list:

- Error handling role

- Common English terms and phrases role used in workflows from Machine Learning, Data Science, or Scientific Computing

- Predicate specification role

- List management commands role

- User on-boarding role

- Time intervals specifications role

- Entity names parsing role

-------

## Utilities to share

The package provides several different types of utilities for making DSL translators.

- Fuzzy matching functions

- DSL meta-specifications processing functions

- Universal command processing

- Resource access class and role

*Remark:* Initial versions of the Finite State Machine classes were part of this package.
Those classes were moved to "DSL::FiniteStateMachines", [AAp9]. Those initial versions are 
kept here since they are referenced in presentations.  

-------

## Examples

The examples in the directory [./examples](./examples) show the different roles provided by the package
and how they can be utilized in different DSL commands.

-------

## References

### Packages

[AAp1] Anton Antonov,
[DSL::Bulgarian Raku package](https://github.com/antononcube/Raku-DSL-Bulgarian),
(2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp2] Anton Antonov,
[Lingua::NumericWordForms, Raku project](https://github.com/antononcube/Raku-Lingua-NumericWordForms)
(2021-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp3] Anton Antonov,
[Grammar::TokenProcessing, Raku project](https://github.com/antononcube/Raku-Grammar-TokenProcessing)
(2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp4] Anton Antonov,
[DSL::English::ClassificationWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-ClassificationWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp5] Anton Antonov,
[DSL::English::DataQueryWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-English-DataQueryWorkflows),
(2020-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp6] Anton Antonov,
[DSL::English::LatentSemanticAnalysisWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-LatentSemanticAnalysisWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp7] Anton Antonov,
[DSL::English::QuantileRegressionWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-QuantileRegressionWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp8] Anton Antonov,
[DSL::English::RecommenderWorkflows, Raku package](https://github.com/antononcube/Raku-DSL-General-RecommenderWorkflows),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).

[AAp9] Anton Antonov,
[DSL::FiniteStateMachines, Raku package](https://github.com/antononcube/Raku-DSL-FiniteStateMachines),
(2021-2022),
[GitHub/antononcube](https://github.com/antononcube).

[NLp1] Nick Logan,
[Text::Levenshtein::Damerau, Raku project](https://github.com/ugexe/Perl6-Text--Levenshtein--Damerau)
(2016),
[GitHub/ugexe](https://github.com/ugexe).

### Repositories

[AAr1] Anton Antonov,
[Conversational Agents at GitHub](https://github.com/antononcube/ConversationalAgents),
(2018-2022),
[GitHub/antononcube](https://github.com/antononcube).




