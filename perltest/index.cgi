#!/usr/bin/perl

use CGI qw(:cgi-lib :escapeHTML :unescapeHTML);
use CGI::Carp qw(fatalsToBrowser);
use File::Basename qw(dirname);
use lib dirname(__FILE__) . '/libs';
use Data::Dumper;
use Tools::FileSystem;
use Tools::Session;

$|=1;
ReadParse();

print "Content-type: text/html; charset=utf-8\n\n"; 

my$fs=Tools::FileSystem->new();
print $fs->getFileContent("header.html");
my $html= $fs->getFileContent("base.html");
my %data = ('a'=>'val1',
	'b'=>'val2',
	'c'=>'val3');

$html =~ s/{{(\w+)}}/$data{$1}/gie;
print $html;

#my $sess=Tools::Session->new();
