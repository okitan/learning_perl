#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my %last_name = (fred => "flintstone", Wilma => "Flintstone", Barney => "Rubble",
                 betty => "rubble", "Bamm-Bamm" => "Rubblie", PEBBLES => "FLINTSTONE");

sub by_last_name_and_first_name {
  ("\L$last_name{$a}" cmp "\L$last_name{$b}") or ("\L$a" cmp "\L$b");
}

foreach (sort by_last_name_and_first_name (keys %last_name)) {
  say join " ", $_, $last_name{$_};
}
