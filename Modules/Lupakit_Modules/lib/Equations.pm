#!/usr/bin/perl

package Equations;

sub fibonacci {

    # Serie di Fibonacci (attenzione !!! code in progress...)
    
    my @serie_array;
    my $serie_string;
    my $element;
    my $count;

    print "\nDi quanti elementi deve essere composta la serie di Fibonacci?\n";
    my $maxsize = <STDIN>;
    chomp $maxsize;
    
    foreach $count ( 1 .. $maxsize ) {
        
        #Equations:
        $element = $count + ($count - 1);
        
        push @serie_array, $element;
        
        }
    #Array to string:
    $serie_string = join " ", @serie_array; 
    
    #Stampa risultato:
    print "\nLa serie risulta essere:\n";
    print "\n$serie_string\n";    
}

1;
