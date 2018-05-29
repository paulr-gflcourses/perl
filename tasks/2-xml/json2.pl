#!/usr/bin/perl

use strict;
use JSON;
use Data::Dumper;

my $perl_scalar=`cat foo.json`;
my $json_text = JSON->new->encode($perl_scalar);

print Dumper($json_text):
print $json_text;

