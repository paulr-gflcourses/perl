#!/usr/bin/perl

use XML::Simple qw(:strict);
use Data::Dumper;

my $ref = XMLin('foo.xml', KeyAttr => { server => 'name' }, ForceArray => [ 'server', 'address' ]); 

print Dumper($ref);
#my $xml=XMLout($ref, KeyAttr => { server => 'name' }, ForceArray => [ 'server', 'address' ]);
#print "\nxml string:\n".$xml;
#print $ref->{logdir};
#print $ref->{server}->{kalahari}->{address}->[1];
