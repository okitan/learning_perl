#!/usr/bin/env perl
## Copyright (C) 2012 by okitan

use 5.010;
use strict;
use warnings;

my $what = "fred|barney";

print grep /($what){3}/, <>;
