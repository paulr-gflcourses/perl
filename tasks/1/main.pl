#!/usr/bin/perl

use strict;
use pack1;
use pack2;

my $obj1=pack1->new();
my $obj2=pack2->new();

print $obj1->get()."\n";
$obj1->set(10);
$obj2->run();

