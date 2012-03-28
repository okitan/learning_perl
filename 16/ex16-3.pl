#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my @words = split " ", `date`;
my $day_of_the_week = $words[2];

say ($words[2] =~ /\A(日|土)/ ? "go play" : "get to work");
