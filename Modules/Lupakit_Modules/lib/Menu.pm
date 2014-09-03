#!/usr/bin/perl

package Menu;


sub menu_principale {

my $menu = << "MAIN_MENU";
    
    ========  medik 0.1 ========

               by d0n1x                   
    
    1)  Password Generator
    2)  Equazioni: Serie di Fibonacci
    3)  Insert Hosts
    4)  Change remote password 
    5)  Copy remote key (SSH) 
    6)  Create Remote User
    7)  Remove Remote User
    8)  Insert Script
    9) Execution remote script
    10) Stampa Report

    ============================

MAIN_MENU

print "\n$menu\n";

}

1;
