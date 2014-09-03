#!/usr/bin/perl;

package Genpass;


sub genpass_login {
    
    my @type_pass_array = ('a'..'z', 'A'..'Z', 0..9, "_-?!%");
    my $lenght_type_pass_array = @type_pass_array;
    my $index_random_element;
    my $element;
    my @password_array;
    my $password_string;
    
    print "Lunghezza password?\n";
    my $maxsize = <STDIN>; 
    chomp $maxsize;
    
    
        foreach ( 1 .. $maxsize ) {
            
            #Generation random number:
            $index_random_element = int(rand($lenght_type_pass_array)) + 1;
            
            #Assignment random element from @type_pass_array: 
            $element = $type_pass_array[$index_random_element];
            
            #Add element to @password_array:
            push @password_array, $element;   
        }
    #Conversion array to string:
    $password_string = join "", @password_array;

#Print password:
print "\nLa password generata è:\n";
print "$password_string\n";
print "\n";


}

1;
