package pack2;
use strict;
use pack1;

sub new
{
	bless({}, ref($_[0]) || $_[0]);
}

sub run
{
	my $obj1=pack1->new();
	my $value=$obj1->get();
	print $value."\n";
}

1;
