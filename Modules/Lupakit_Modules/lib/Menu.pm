#!/usr/bin/perl

package Menu;


sub menu_principale {

my $menu = << "MAIN_MENU";
    
    ---------  LUPAKIT 1.0 ---------------

    (1)   Password Generator
    
    (2)   Equazioni: Serie di Fibonacci
         
          Hosts List:
          
          (I)nsert (R)eplace 
          
          (D)elete <-in progress 
          
    (3)   Change Remote Password  <-in progress
    (4)   Copy   Remote Key (SSH) <-in progress
    (5)   Create Remote User      <-in progress
    (6)   Remove Remote User      <-in progress
    
    (7)   Insert SCRIPT           <-in progress
    (8)   Execution Remote SCRIPT <-in progress
    (9)   Report Remote SCRIPT    <-in progress

    
                         by d0n1x, luma
    -------------------------------------

MAIN_MENU

print "\n$menu\n";

}

1;
