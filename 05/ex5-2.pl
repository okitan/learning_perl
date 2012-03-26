#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use POSIX;

chomp(my @input = <STDIN>);
my $width = shift(@input);

say "1234567890" x ceil($width / 10); # measure

say sprintf("%${width}s", $_) for @input;
