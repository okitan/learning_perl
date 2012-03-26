#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

chomp(my @inputs = <STDIN>);

my %hash = ();
foreach my $word (@inputs) {
  $hash{$word} += 1;
}

foreach my $word (sort keys %hash) {
  say $word . "=>" . $hash{$word};
}
