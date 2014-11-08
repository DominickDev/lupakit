#!/usr/bin/perl

package Change;


sub ciclo_cambia_password {

	my $username  = 'pippo';
	my $oldpass = 'password';
	my $newpass = 'Caccamus!!!...';


	#Popolamento @hosts da hosts.txt:
	Leggi::hosts;

	foreach my $host (@hosts) {
		
		Accesso::cambia_password($username, $oldpass, $newpass, $host);

	}
}

1;
