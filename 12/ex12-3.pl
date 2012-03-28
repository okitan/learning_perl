#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

sub is_my_own_readable_writable_file {
  -o -r -w $_
}

for (@ARGV) {
  say $_ if is_my_own_readable_writable_file($_);
}
