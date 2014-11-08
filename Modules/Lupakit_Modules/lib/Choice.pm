#!/usr/bin/perl
package Choice;
#use strict;
#use warnings;
use feature qw/switch/;

sub choice_menu_principale {
    
    print ("Cosa scegli?\n");   
    
    my $option = <>;
    
    chomp $option;

    given ($option) {
        when ( 1 ) {
		Crea::lista_hosts();
	}
	
	when ( 2 ) {
		Change::ciclo_cambia_password();
	}
    }

}




1;
