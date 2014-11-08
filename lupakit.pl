#!/usr/bin/perl

#---------------------------
# Lupakit 1.0
# 
# ABSTRACT:
# Utilities for system administrator
# 
# Note: Expect module required
# 
# by Domenico Caccamo, Lucas Mateus
# --------------------------

#use strict;
#use warnings;
#use diagnostics;
use feature qw/switch/;

# use lib '/root/script/progetti/Modules/Medik_Modules/lib';
# usi cosi'
# Ok, grazie! - donix

use FindBin qw/$Bin/;
use lib $Bin.'/Modules/Lupakit_Modules/lib';

require Menu;
require Choice;
require Accesso;
require Leggi;
require Crea;
#require Equations;
#require File_Insert;
#require File_Replace;
#require File_Report;
require Change;
#require Execution;
#require Expect; 
#require Messages

Menu::menu_principale();
    
Choice::choice_menu_principale();





#Messages:print "$message{offerta}\n";




#----General Memorandum Structure Code-----
#
# Vars: Input, Output  
# Vars Sub: Input, Output (return code) 
# Hash/Array: Messages 
# Sub: User Interface (menu)
# Sub: Validate Input
# Sub: Print Report 
# Sub: OOP clone (optional)
# Class: OOP (optional)
# Subroutine 
# Code 
#-------------------------------------------

exit;
