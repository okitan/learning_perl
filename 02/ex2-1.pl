#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $radius = <STDIN>;
$radius = 0 if $radius < 0;

my $pi     = 3.141592654;

say 2 * $pi * $radius;
