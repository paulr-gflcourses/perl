#!/usr/bin/perl

use dbInt;
use Data::Dumper;

my$ref=dbInt->new();
$ref->connect();

my$result=$ref->querySelect("SELECT * FROM Person");
print Dumper($result);

my$result=$ref->querySelect("SELECT * FROM Person WHERE id=2");
print Dumper($result);
