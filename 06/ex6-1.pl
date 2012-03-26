#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my %hash = ( fred => "flintstone", barney => "rubble", wilma => "flintstone");

chomp(my $name = <STDIN>);

if ( exists $hash{$name} ) {
  say $hash{$name};
}
