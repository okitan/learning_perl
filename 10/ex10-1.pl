#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use Getopt::Long;

my $debug = 0;
GetOptions("debug!" => \$debug);
# I don't have the oportunity to use //

my $answer = int(1 + rand(1000));

my $count = 0;
while (<STDIN>) {
  chomp;

  given ($_) {
    when(/\A(quit|exit)\Z/) { exit };

    when(! /\A\d+\Z/ )      { say "input numeric"; };

    when($answer)           { say "answer is $answer!"; last; };
    when($_ > $answer)      { say "Too high"; };
    when($_ < $answer)      { say "Too low";  };

    default                 { say "input 1..1000"; };
  }

  say(sprintf("Hint answer is %d*", $answer / 10)) if ($debug && ++$count > 5)
}
