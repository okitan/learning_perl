#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

chomp(my @lines = <STDIN>);

my @reversed_lines = reverse @lines;

foreach my $line (@reversed_lines) {
  say $line;
}
