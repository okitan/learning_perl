#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

sub greet {
  state @last_ones;

  say "Hi @_! " . ( @last_ones ? "I have seen: @last_ones" : "You are the first one here!" );

  push(@last_ones, @_);
}

greet "Fred";
greet "Barney";
greet "Wilma";
greet "Betty";
