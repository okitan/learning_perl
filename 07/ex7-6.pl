#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

# umhhh
print grep /fred/, (grep /wilma/, <>);
