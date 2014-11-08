#!/usr/bin/perl

package File_Replace;

use strict;
use warnings;

sub replace_hosts_list {

    #---------------------------------------------------
    # ABSTRACT: 
    #
    #  Lo script richiede inizialmente informazioni sul file da elaborare.
    #  L'elaborazione consiste nella sostituzione di una stringa
    #  all'interno di un file di testo già esistente.
    #  Infine salva una copia del file modificato col nome precedentemente specificato.
    #
    # INPUT:
    #  Name file old 
    #  String old
    #  String new
    #  Name file new
    #
    # PROCESS:
    #  Replace the string old with string new
    #
    # OUTPUT: 
    #  Save file new 
    #  View file new on screen
    #-----------------------------------------------------

    #INPUT: 
    my $filename_input;   #Nome file input 
    my $search;           #Stringa da cercare
    my $replace;          #Stringa da sostituire 
    my $flag_input = "n"; #flag uscita ciclo di inserimento dati

    #PROCESS:
    my @array_words;      #array per inserimento ed elaborazione parole dal file testo
    my $word;             #singola parola del testo

    #OUTPUT:
    my $filename_output;  #Nome file output

    #-----------------------------------------------------

    #Ciclo inserimento dati: 
    while ($flag_input eq "n") {

        #Primo dato:
        print "Nome file old? (default: hosts.txt)\n";
        $filename_input = <STDIN>;
        if ($filename_input eq "\n") {$filename_input = "hosts.txt";}
        chomp ($filename_input);
    
        #Secondo dato:
        print "Old hostname?\n";
        $search = <STDIN>;
        chomp ($search);
 
        #Terzo dato:
        print "New hostname?\n";
        $replace = <STDIN>;
        chomp ($replace);
    
        #Quarto dato:
        print "Nome file new? (default: hosts.txt - overwriting)\n";
        $filename_output = <STDIN>;
        if ($filename_output eq "\n") {$filename_output = "hosts.txt";}
        chomp ($filename_output);
    
        #Conferma dati:
        print "Nome file old: $filename_input \n"; 
        print "Parola old: $search \n";
        print "Parola new: $replace \n";
        print "Nome file new: $filename_input \n";
        print "\n Posso continuare? (y/n) \n";
        $flag_input = <STDIN>;
        chomp ($flag_input);

    } 

    #Inserimento "file old" in array @array_words:
    open (READ, $filename_input);
        @array_words = <READ>;
    close (READ);

    #Ciclo ricerca/sostituzione stringa old  con stringa new:
    foreach $word (@array_words) {
        $word =~ s/$search/$replace/g;
    }

    #Salva "file new" e output su schermo:
    open (OUT, ">$filename_output");
        print OUT @array_words;
    close (OUT);

    

}

1;
