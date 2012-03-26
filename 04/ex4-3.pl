#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use List::Util qw(sum);

sub average {
  return if @_ == 0;

  # XXX: my $n = @_; is zero if I omit &
  sum(@_) / @_;
}

sub above_average {
  #my $average = average(@_);
  my $average = &average; # XXX: I don't know why this require &
  grep { $_ > $average; } @_;

  #my $avg = &average; # also requires &
  #grep { $_ > $avg; } @_;
}

my @fred = above_average(1..10);
say for @fred;

my @barney = above_average(100, 1..10);
say for @barney;
