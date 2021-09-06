use DSL::Shared::Utilities::FuzzyMatching;
use DSL::Shared::Utilities::MetaSpecsProcessing;

class DSL::Shared::Entity::ResourceAccess {
    ##========================================================
    ## Data
    ##========================================================
    my Hash %nameToEntityID{Str};
    my Set %knownNames{Str};
    my Set %knownNameWords{Str};

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
    #| This function has to be over-written in the descendants of this class.
    method get-resource-files( --> Hash) {
        my @fileNames = <DataFormatNameToEntityID_EN.csv MetadataTypeNameToEntityID_EN.csv>;
        my %resources = @fileNames.map({ $_.subst( / '.csv' $$ /, '' ) }) Z=> @fileNames;
        %resources = %resources.map({ $_.key => %?RESOURCES{$_.value} });
        return %resources;
    }

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

            %nameToEntityID.push( $fileNameKey => %nameRules );

            %knownNames.push( $fileNameKey => Set(%nameRules) );

            %knownNameWords.push( $fileNameKey => Set(%nameRules.keys.map({ $_.split(/h+/) }).flat) );
        }

        #-----------------------------------------------------------
        self
    }

    ##========================================================
    ## Access
    ##========================================================
    method is-known-name-word(Str:D $word) {
        my Bool $res = False;
        for %knownNameWords.keys -> $c {
            $res = known-string(%knownNameWords{$c}, $word, :bool, :!warn);
            last when $res
        }
        $res
    }

    method known-name-word(Str:D $class, Str:D $word, Bool :$bool = True, Bool :$warn = True) {
        known-string(%knownNameWords{$class}, $word, :$bool, :$warn)
    }

    #-----------------------------------------------------------
    method known-name(Str:D $class, Str:D $phrase, Bool :$bool = True, Bool :$warn = True) {
        known-phrase(%knownNames{$class}, %knownNameWords{$class}, $phrase, :$bool, :$warn)
    }

    #-----------------------------------------------------------
    multi method name-to-entity-id(Str:D $phrase, Bool :$warn = False) {
        for %nameToEntityID.keys -> $class {
            my $name = self.known-name($class, $phrase, :!bool, :!warn);
            return %nameToEntityID{$class}{$name} if $name
        }
    }

    #-----------------------------------------------------------
    multi method name-to-entity-id(Str:D $class, Str:D $phrase, Bool :$warn = False) {
        my $name = self.known-name($class, $phrase.lc, :!bool, :$warn);
        $name ?? %nameToEntityID{$class}{$name} !! Nil
    }
}
