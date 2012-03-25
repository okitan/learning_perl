#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

chomp(my $first  = <STDIN>);
chomp(my $second = <STDIN>);

say $first * $second;
