#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use List::Util qw(max);

my @numbers = ( 17, 1000, 04, 1.50, 3.14159, -1, 1.5, 4, 2001, 90210, 666);

my $max_length = max(map { length($_); } @numbers);

say sprintf("%${max_length}g", $_) for sort { $a <=> $b } @numbers;
