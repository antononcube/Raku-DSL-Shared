use v6;

# Following Chapter 11, "Generating Good Parse Error Messages", of the book [1].
# See also [2].

# [1] Moritz Lenz, Parsing with Perl 6 Regexes and Grammars, Apress, 2017.
# [2] "Perl 6 By Example: Generating Good Parse Errors from a Parser", https://perlgeek.de/blog-en/perl-6/2017-007-book-parse-errors.html

role DSL::Shared::Roles::ErrorHandling {

    # Expected message
    method expect_msg($what) {
        self.error_die("expected $what");
    }

    # Error message
    method error_die($msg) {
        my $parsed-so-far = self.target.substr(0, self.pos);
        my @lines = $parsed-so-far.lines;
        die "Cannot parse: $msg at line @lines.elems(), after '@lines[*-1]'";
    }

    # White space
    method ws() {
      if self.pos > $*HIGHWATER {
        $*HIGHWATER = self.pos;
        $*LASTRULE = callframe(1).code.name;
      }
      callsame;
    }

    # Parse over-write
    method parse($target, |c) {
      my $*HIGHWATER = 0;
      my $*LASTRULE;
      my $match = callsame;
      self.error_msg($target) unless $match;
      return $match;
    }

    # Sub-parse over-write
    method subparse($target, |c) {
      my $*HIGHWATER = 0;
      my $*LASTRULE;
      my $match = callsame;
      self.error_msg($target) unless $match;
      return $match;
    }

    # Error message to be issued by .parse and .subparse
    method error_msg($target) {
      my $parsed = $target.substr(0, $*HIGHWATER).trim-trailing;
      my $un-parsed = $target.substr($*HIGHWATER, $target.chars).trim-trailing;
      my $line-no = $parsed.lines.elems;
      my $msg = "Cannot parse the command";

      $msg ~= "; error in rule $*LASTRULE at line $line-no" if $*LASTRULE;
      $msg ~= "; target '$target' position $*HIGHWATER";
      $msg ~= "; parsed '$parsed', un-parsed '$un-parsed'";
      $msg ~= ' .';
      warn $msg;
    }

}
