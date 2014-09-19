#!/usr/bin/perl

package Change;

sub change_copy_key {
    #---------------------------------------------------------
    # ABSTRACT:  
    # SSH Login Without Password Using ssh-keygen & ssh-copy-id  
    #---------------------------------------------------------  
      
    #INPUT
    my $filename_input = "hosts.txt";
    my @hosts_array;
    my $input_flag;
    my $path_pub_key;

    #PROCESS
    my $host
  
    #OUTPUT 
  

    #Richiesta esistenza chiave pubblica e chiave privata su localhost:
    print "\n Hai una chiave pubblica e privata su localhost? (y/n):\n";
    $input_flag = <>;
    chomp $input_flag;
    
    #Generazione chiavi pubblica e privata rsa:
    system(ssh-key-gen) if $input_flag eq "n";
    
    #Copia file hosts.txt nell'array @host_array per successivo uso:
    open(FH_READ_HOSTS, ">$filename_input")
            or die "Error while opening file:$!\n";
            
            @hosts_array = <FH_READ_HOSTS>;
            chomp @host_array;
    
    close(FH_READ_HOSTS)
            or die "Error while closing file:$!\n";

   
    #Ciclo copia key per ogni hosts
    foreach (@hosts_array) {
    
    system(ssh-id
    
    #Login (static password)
    Expect::my_expect();

    #
    scp 

}










#sub change_password {

#}

#sub change_user_add {

#}

#sub change_user_remove {

#}





1;
