#!/usr/bin/env perl
## Copyright (C) 2012 by okitan

use 5.010;
use strict;
use warnings;

use List::Util qw(first);

my $copyright_prefix = "## Copyright (C)";

@ARGV = grep {
  if (open IN, "<$_") { # when failed to open if returns 0
    my @lines = <IN>;
    close IN;
    0 == grep { index($_, $copyright_prefix) == 0 } @lines;
  }
} @ARGV;

if (@ARGV) {
  $^I = ".bak";
  while (<>) {
    #next if index($_, $copyright_prefix) == 0; # delete existing copyright

    print;
    print $copyright_prefix . " 2012 by okitan\n" if (/\A#!/);
  }
}
