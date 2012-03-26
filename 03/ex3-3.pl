#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use Getopt::Long;

my $newline = 0;
GetOptions("newline!" => \$newline);

chomp(my @names = <STDIN>);

my @sorted_names = sort(@names);

foreach my $name (@sorted_names) {
  if ($newline) {
    say $name;
  } else {
    print $name;
  }
}
