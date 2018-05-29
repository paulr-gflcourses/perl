package pack1;
use strict;

my $self;

sub new
{
	my $class=ref($_[0])||$_[0];
	$self||=bless({}, $class);
	$self->{'val'}||=1;
	return $self;
}

sub get
{
	return $self->{'val'};
}
sub set
{
	my($self, $val)=@_;
	$self->{'val'}=$val;
}

1;
