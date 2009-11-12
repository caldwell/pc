#  Copyright (c) 2009 David Caldwell,  All Rights Reserved. -*- cperl -*-

use Test::More;
use Test::Script::Run;

my @test = ([ '1+3',     '4',             'simple addition works'],
            [ '1/4+1/5', '9/20',          'bigrat works'],
            [ '1m',      '1048576',       'power of 2 units work'],
            [ '1m',      '1,048,576',     'comma output works'],
            [ '1m',      '1MB',           'Exact power of 2 output units work'],
            [ '1m+1',    '1.00MB',        'Inexact power of 2 output units work'],
            [ '10000',   '0x2710',        'hex output works'],
            [ '10000',   '023420',        'octal output works'],
            [ '5+3*20',  'A',             'ascii output works'],
            [ '1<<40',   '0x10000000000', 'bigint works'],
           );

plan tests => scalar @test;

for (@test) {
    run_output_matches('pc', [$_->[0]], [qr/\b$_->[1]\b/], [''], $_->[3])
}
