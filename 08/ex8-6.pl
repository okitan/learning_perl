#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

chomp(my @lines = <>);
say for grep /\s+\Z/, @lines;
