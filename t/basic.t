#  Copyright (c) 2009 David Caldwell,  All Rights Reserved. -*- cperl -*-

use Test::More tests => 2;
use Test::Script::Run;

run_ok('pc', ["1+3"], 'pc runs ok');
run_not_ok('pc', ["david rules"], 'pc detects syntax errors');
