#!/usr/bin/env perl
## Copyright (C) 2012 by okitan

use 5.010;
use strict;
use warnings;

foreach  (@ARGV) {
  open IN, "<$_" or die "Cannot open $_: $!";

  open OUT, ">$_.out" or die "Cannnot open $_.out: $!";

  while (<IN>) {
    #s/Fred/Larry/gi; # ex9-2

    # ex9-3
    s/(Fred)/\U$1/gi;
    s/Wilma/Fred/gi;
    s/FRED/Wilma/g; # Fred is not replaced.

    print OUT $_;
  }

  close OUT;
  close IN;
}
