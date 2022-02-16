use DSL::Shared::Utilities::FuzzyMatching;
use DSL::Shared::Utilities::MetaSpecsProcessing;

role DSL::Shared::Entity::ResourceAccessish {

    ##========================================================
    ## Data
    ##========================================================
    has Hash %!nameToEntityID{Str} = %();
    has Set %!knownNames{Str} = %();
    has Set %!knownNameWords{Str} = %();
    has Int $!numberOfMakeCalls = 0;

    method getNameToEntityID( --> Hash) { %!nameToEntityID }
    method getKnownNames( --> Hash) { %!knownNames }
    method getKnownNameWords( --> Hash) { %!knownNameWords }

    ##========================================================
    ## Ingestion
    ##========================================================
    #| Make the entity name dictionaries.
    method ingest-resource-files() {

        #| The function get-resource-files is provided by the classes that do this role.
        my %resourceFileNames = self.get-resource-files();

        #-----------------------------------------------------------
        for %resourceFileNames.kv -> $fileNameKey, $slurpable {
            my Str @nameIDPairs = $slurpable.lines;

            my %nameRules = @nameIDPairs.map({ $_.split(',') }).flat;
            %nameRules = %nameRules.keys.map(*.lc) Z=> %nameRules.values;

            self.ingest-entity-dictionary($fileNameKey, %nameRules)
        }

        #-----------------------------------------------------------
        self
    }

    #| Make the entity name dictionaries.
    method ingest-entity-dictionary( Str $class, %nameToIDRules ) {
        self.getNameToEntityID().push( $class => %nameToIDRules );

        self.getKnownNames().push( $class => Set(%nameToIDRules) );

        self.getKnownNameWords().push( $class => Set(%nameToIDRules.keys.map({ $_.split(/h+/) }).flat) );
    }


    ##========================================================
    ## Access
    ##========================================================
    method is-known-name-word(Str:D $word) {
        my Bool $res = False;
        for self.getKnownNameWords().keys -> $c {
            $res = known-string(self.getKnownNameWords(){$c}, $word, :bool, :!warn);
            last when $res
        }
        $res
    }

    method known-name-word(Str:D $class, Str:D $word, Bool :$bool = True, Bool :$warn = True) {
        known-string(self.getKnownNameWords(){$class}, $word, :$bool, :$warn)
    }

    #-----------------------------------------------------------
    method known-name(Str:D $class, Str:D $phrase, Bool :$bool = True, Bool :$warn = True) {
        known-phrase(self.getKnownNames(){$class}, self.getKnownNameWords(){$class}, $phrase, :$bool, :$warn)
    }

    #-----------------------------------------------------------
    multi method name-to-entity-id(Str:D $phrase, Bool :$warn = False) {
        for self.getNameToEntityID().keys -> $class {
            my $name = self.known-name($class, $phrase, :!bool, :!warn);
            return self.getNameToEntityID{$class}{$name} if $name
        }
    }

    #-----------------------------------------------------------
    multi method name-to-entity-id(Str:D $class, Str:D $phrase, Bool :$warn = False) {
        my $name = self.known-name($class, $phrase.lc, :!bool, :$warn);
        $name ?? self.getNameToEntityID{$class}{$name} !! Nil
    }
}
