use DSL::Shared::Utilities::FuzzyMatching;
use DSL::Shared::Utilities::MetaSpecsProcessing;

class DSL::Shared::Entity::ResourceAccess {

    ##--------------------------------------------------------
    ## OVERRIDE all below until OVERRIDE-END
    ##--------------------------------------------------------

    ##========================================================
    ## Data
    ##========================================================
    my Hash %nameToEntityID{Str} = %();
    my Set %knownNames{Str} = %();
    my Set %knownNameWords{Str} = %();

    method getNameToEntityID( --> Hash) { %nameToEntityID }
    method getKnownNames( --> Hash) { %knownNames }
    method getKnownNameWords( --> Hash) { %knownNameWords }

    ##========================================================
    ## BUILD
    ##========================================================
    # We create a lexical variable in the class block that holds our single instance.
    my DSL::Shared::Entity::ResourceAccess $instance = Nil;

    my Int $numberOfInstances = 0;

    method getNumberOfInstances() { $numberOfInstances }

    my Int $numberOfMakeCalls = 0;

    method getNumberOfMakeCalls() { $numberOfMakeCalls }

    method new {!!!}

    #| Singleton instance.
    submethod instance {

        $instance = DSL::Shared::Entity::ResourceAccess.bless unless $instance;

        if $numberOfInstances == 0 {
            $instance.make()
        }

        $numberOfInstances += 1;

        $instance
    }

    #| Get resource file names with keys,
    #| This function has to be overridden in the descendants of this class.
    method get-resource-files( --> Hash) {
        my @fileNames = <DataFormatNameToEntityID_EN.csv MetadataTypeNameToEntityID_EN.csv>;
        my %resources = @fileNames.map({ $_.subst( / '.csv' $$ /, '' ) }) Z=> @fileNames;
        %resources = %resources.map({ $_.key => %?RESOURCES{$_.value} });
        return %resources;
    }

    ##--------------------------------------------------------
    ## OVERRIDE-END
    ##--------------------------------------------------------

    #| Make the entity name dictionaries.
    method make() {
        $numberOfMakeCalls += 1;
        #say "Number of calls to .make $numberOfMakeCalls";

        my %resourceFileNames = self.get-resource-files();

        #-----------------------------------------------------------
        for %resourceFileNames.kv -> $fileNameKey, $slurpable {
            my Str @nameIDPairs = $slurpable.lines;

            my %nameRules = @nameIDPairs.map({ $_.split(',') }).flat;
            %nameRules = %nameRules.keys.map(*.lc) Z=> %nameRules.values;

            self.getNameToEntityID().push( $fileNameKey => %nameRules );

            self.getKnownNames().push( $fileNameKey => Set(%nameRules) );

            self.getKnownNameWords().push( $fileNameKey => Set(%nameRules.keys.map({ $_.split(/h+/) }).flat) );
        }

        #-----------------------------------------------------------
        self
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
