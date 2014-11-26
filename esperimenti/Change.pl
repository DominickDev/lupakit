#!/usr/bin/perl

use lib $Bin.'/Modules/lib/';
use FindBin qw/$Bin/;

#use 5.20.1;

use lib '/home/donix/script/progetti/lupakit/esperimenti/Modules/lib';

require Accesso;


	my $username  = 'pippo';
	my $oldpass = 'perldipippo';
	my $newpass = 'adessosonobravo';
	my $host = '10.0.3.214';


Accesso::cambia_password($username, $oldpass, $newpass, $host);






