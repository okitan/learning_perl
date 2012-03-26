#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use List::Util qw(reduce);

sub total {
  reduce { our ($a, $b); $a + $b }(@_);
}

my @fred = qw(1 3 5 7 9);
my $fred_total = total(@fred);

say $fred_total;

say total(1..1000);

chomp(my @input = <STDIN>);
my $input_total = total(@input);

say $input_total;
