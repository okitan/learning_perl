#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

# if no my, it warns.
my @lines = `perldoc -u -f atan2`;

foreach(@lines) {
  s/\w<([^>]+)>/\U$1/g;
  print;
}
