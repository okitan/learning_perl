#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use Test::More;
use Test::Base;

use File::Basename;

my $dir = dirname(__FILE__);
sub invoke {
  my ($first, $second) = @_;

  my $input = $first . "\n" . $second;
  return `echo "$input" | $dir/ex2-3.pl` + 0; # remove \n and conver to number
}

plan tests => 1 * blocks;

filters {
  input    => [qw/lines chomp/],
  expected => [qw/chomp/],
};

run {
  my $block = shift;

  is invoke($block->input), $block->expected;
};

done_testing;

__END__

=== 3 * 4 = 12

--- input
3
4
--- expected
12

=== 1 * 0 = 0
--- input
1
0
--- expected
0
