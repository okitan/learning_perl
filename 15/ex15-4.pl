#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use List::Compare;

sub divisors {
  my $number = shift;

  grep { $number % $_ == 0 } (2..($number / 2));
}

for (@ARGV) {
  when (/\A\d+\Z/) {
    my @divisors = divisors($_);
    say (@divisors ? "@divisors" : "prime")
  }

  default { say "this is not natural number" }
}
