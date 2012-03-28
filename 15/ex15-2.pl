#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

while (<STDIN>) {
  chomp;

  my @output;
  given ($_) {
    when ($_ % 3 == 0) { push(@output, "Fizz"); continue }
    when ($_ % 5 == 0) { push(@output, "Bin");  continue }
    when ($_ % 7 == 0) { push(@output, "Sausage") }
  }

  say "@output" if @output;
}
