#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

print grep /\A[A-Z][a-z].+/, <>;
