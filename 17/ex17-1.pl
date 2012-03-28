#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $input = "input.txt";
open INPUT, "<$input" or die "Cannot open $input: $!";

chomp(my @lines = <INPUT>);

while (<>) {
  chomp(my $str = $_);

  my @matched = grep /$str/, @lines;
  my $size = @matched;

  say "Your input $str matches $size times";
  say for @matched;
}
