package dbInt;
use strict;
use DBI;
use Data::Dumper;

my$self;
my$dbh;

sub new
{
	my$class=ref($_[0])||$_[0];
	$self||=bless({},$class);
	return $self;
}

sub connect
{
	my$host="DBI:mysql:user12:localhost";
	my$user="user12";
	my$password="user12";
	$dbh = DBI->connect($host, $user, $password)
		or die $DBI::errstr;
}

sub queryChange
{
	my($self,$sql)=@_;
	$dbh->do($sql);
}

sub querySelect
{
	my($self, $sql, @params)=@_;
	#print $sql;
	#print "params: ".Dumper(@params)."\n";
	my$sth=$dbh->prepare($sql);
	$sth->execute(@params);
	my$result = $sth->fetchall_arrayref({});
	$sth->finish();
	return $result;
}

sub printAllPersons
{
#	my$sth=$dbh->prepare('SELECT * FROM Person');
#	$sth->execute();
#	while (my$row = $sth->fetchrow_hashref()){
#		my$id=$row->{'id'};
#		my$name=$row->{'name'};
#		my$surname=$row->{'surname'};
#		my$city=$row->{'city'};
#		my$age=$row->{'age'};
#		print "Person( ";
#		print "id= ".$id.", ";
#		print "name= ".$name.", ";
#		print "surname= ".$surname.", ";
#		print "city= ".$city.", ";
#		print "age= ".$age.", ";
#		print ")\n";
#	}
#	$sth->finish();

	
	my$result=$self->querySelect("SELECT * FROM Person");	
	print Dumper($result);
}

sub printPersonId
{
	my($self)=@_;
	my$result=$self->querySelect("SELECT * FROM Person WHERE id=?",4);	
	#my$result=$self->querySelect("SELECT * FROM Person");	
	print Dumper($result);	
}
sub DESTROY 
{ 
	$dbh->disconnect();
}

1;
