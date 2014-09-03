#!/usr/bin/perl

#####
# Script: medik.pl
# Version: 0.1
# Date: Agosto 2014
# Description: administrative toolkit 
# By: d0n1x
# Email: donatello.caccamo@gmail.com
#####

use strict;
use warnings;
use diagnostics;
use feature qw/switch/;


# use lib '/root/script/progetti/Modules/Medik_Modules/lib';
# usi cosi'
use FindBin qw/$Bin/;
use lib $Bin.'/Modules/Lupakit_Modules/lib';

require Menu;
require Choice;
require Genpass;
require Equazioni;
#require Change;
#require Execution;
#require Expect; 
require Insert;
#require Messages
#require Report;

Menu::menu_principale();

#Messages:print "$message{offerta}\n";
    
Choice::choice_menu_principale();


# === Generic Code Structure ===

# Vars: Input, Output  
# Vars Sub: Input, Output (return code) 
# Hash/Array: Messages 
# Sub: User Interface (menu)
# Sub: Validate Input
# Sub: Print Report 
# Sub: Class Clone (optional)
# Class: POE (optional)
# Subroutine 
# Code 

# ==============================

exit;
