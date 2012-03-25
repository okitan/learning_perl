#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

chomp(my $string = <STDIN>);
chomp(my $times  = <STDIN>);

for (my $i = 0; $i < $times; $i++) {
  say $string;
}
