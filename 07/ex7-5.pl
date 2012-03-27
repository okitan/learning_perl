#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

print grep /(\S)\1/, <>;
