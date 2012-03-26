#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

sub greet {
  state $last_one;
  (my $before, $last_one) = ($last_one, @_);

  say "Hello @_, " . ( $before ? "I met $before, before" : "" );
}

greet "Fred";
greet "Barney";
