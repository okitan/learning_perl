#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

for (@ARGV) {
  my @output = ($_);

  when (-r $_) { push(@output, "readable"); continue };
  when (-w $_) { push(@output, "writable"); continue };
  when (-x $_) { push(@output, "executable"); continue };

  say "@output";
}
