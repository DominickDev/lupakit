#!/usr/bin/perl

package Readlist;



sub read_hosts {
    
    my $file = "./hosts.txt";

    open(HOSTS,"hosts.txt")
        or die "Error while opening file:$!\n";

    #Popolamento lista @hosts da hosts.txt    
    chomp( my @hosts = <HOSTS> );

    close(HOSTS)
            or die "Error while closing file:$!\n";
    
    open my $lista, ">", $file
        or die "Errore: $!";
}

#sub read_xxx {


#}





1;
