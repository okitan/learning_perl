#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $oldest_file;
my $max;
for my $file (@ARGV) {
  my $how_old = (-M $file);

  $oldest_file //= $file;
  $max //= $how_old;

  if ($how_old > $max) {
    $max = $how_old;
    $oldest_file = $file;
  }
}

say "Oldest file is $oldest_file and elapsed $max days";
