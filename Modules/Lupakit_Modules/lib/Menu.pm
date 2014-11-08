#!/usr/bin/perl

package Menu;


sub menu_principale {

my $menu = << "MAIN_MENU";
    
   +-------------  LUPAKIT 1.0 ------------------+

    
        
    (1)   Inserisci lista hosts
          
    (2)   Cambia password scaduta 
    
    (3)   Copia chiave ssh  
    
    (4)   Generazione nuova password

    (5)   Equazioni: Serie di Fibonacci


                                    by d0n1x, luma
   +----------------------------------------------+

MAIN_MENU

print "\n$menu\n";

}

#    (5)   Create Remote User      
#    
#    (6)   Remove Remote User    
    
#    (7)   Insert SCRIPT          
    
#    (8)   Execution Remote SCRIPT 
    
#    (9)   Report Remote SCRIPT    

    
1;
