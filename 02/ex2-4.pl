#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $first  = <STDIN> + 0;
my $second = <STDIN> + 0;

say $first * $second;
