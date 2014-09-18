#!/usr/bin/perl

package File_Insert;

#---------------------------------------------------
# ABSTRACT: 
# 
# Subroutines per inserimento dati INPUT e scrittura/salvataggio file
#-----------------------------------------------------

use strict;
use warnings;

sub insert_hosts_list {

    #INPUT: 
    my $filename_hosts = "./hosts.txt";
    my $flag_input = "n"; 

    #PROCESS:

    #OUTPUT:
    my $host;

    #Creazione nuovo file hosts.txt. Attenzione! code in progress...(only APPEND)
    open my $FH_WRITE_LISTA_HOSTS, ">$filename_hosts" or die "Errore: $!";
    
        #Istruzioni su schermo:
        print "\nInserire gi hostname seguiti da tasto Enter.\n";
        print "Per finire premere Enter.\n";

        #Ciclo richiesta hostname:
        while ($flag_input eq "n") {
            print "Nome host?\n";
            $host = <>; 
            
            #Controllo dati input:  
            if ($host eq "\n") {
                print "Sei sicuro di uscire? (y/n)\n";
                $flag_input = <>;
                chomp $flag_input;
                next if $flag_input eq "n";
                last if $flag_input eq "y";
            }
           
            #Scrittura su host.txt
#            chomp $host;
            print $FH_WRITE_LISTA_HOSTS $host;
                
        }

    close $FH_WRITE_LISTA_HOSTS;

}


#sub insert_script {

#...

#}





1;
