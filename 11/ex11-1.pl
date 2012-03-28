#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use Module::CoreList;

my %modules = %{ $Module::CoreList::version{5.010} };

for (sort keys %modules) {
  my $version = $modules{$_} // "";

  say "$_ => $version";
}
