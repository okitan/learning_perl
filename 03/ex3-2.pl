#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my @names = qw(fred betty barney dino wilma pebbles bamm-bamm);

chomp(my @numbers = <STDIN>);

foreach my $num (@numbers) {
  say $names[$num - 1];
}
