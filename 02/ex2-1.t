#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use Test::More;

use File::Basename;

my $dir = dirname(__FILE__);
sub invoke {
  my $radius = shift;

  return ` echo $radius | $dir/ex2-1.pl` + 0; # remove \n and conver to number
}

subtest 'set radius 12.5' => sub {
  my $result = invoke(12.5);
  is $result, "78.53981635";
};

subtest 'set radius < 0' => sub {
  my $result = invoke(-1);
  is $result, "0";
};

done_testing;
