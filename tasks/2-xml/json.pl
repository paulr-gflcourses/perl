#!/usr/bin/perl

use strict;
use JSON;
use Data::Dumper;

my $json_text = do {
   open(my $json_fh, "<:encoding(UTF-8)", 'foo.json')
      or die("Can't open \$filename\": $!\n");
   local $/;
   <$json_fh>
};

my $json = JSON->new;
my $data=$json->decode($json_text);
print "\nJSON:\n".Dumper($data);

for ( @{$data->{config}} ) {
   print $_->{name}."\n";
}
