#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use List::Util qw(max);

my $max_key_length = max(map { length($_) } keys(%ENV));

foreach my $key (sort keys %ENV) {
  say sprintf("%${max_key_length}s => %s", $key, $ENV{$key});
}
