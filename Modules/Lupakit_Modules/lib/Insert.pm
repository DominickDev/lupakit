#!/usr/bin/perl

package Insert;

sub insert_hosts_list {
    
    my $file = "./hosts.txt";

    open my $lista, ">", $file
        or die "Errore: $!";

        print "\nInserisci hostname seguito da invio (premere soltanto invio per finire):\n";
        while ( my $input = <STDIN> ) {
            last if $input eq "\n";

            
            print $lista $input;
            
        }

    close $lista;
    

}

sub insert_script {


}





1;
