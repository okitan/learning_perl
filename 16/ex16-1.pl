#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $dir = "/";

# system "cd $dir; ls -l"; # ex16-1
system "ls -l $dir > ls.out 2> ls.err"; # ex16-2
