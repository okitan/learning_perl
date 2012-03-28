#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

sub check_file {
  say $_;

  if (-e $_) {
    say "exist";
  } else {
    say "not exist";
    return;
  }

  say -r $_ ? "readable" : "not readable";
  say -w $_ ? "writable" : "not writable";
  say -x $_ ? "executable" : "not executable";
}

check_file for @ARGV;
