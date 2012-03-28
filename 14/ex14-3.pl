#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $sub = "t";

my $str = "This is a test";

my $index = -1; # to start with 0
while (($index = index($str, $sub, $index + 1)) > 0) {
  say $index;
}
