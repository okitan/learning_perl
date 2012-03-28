#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my @words = split " ", `date`;
say $words[2];
