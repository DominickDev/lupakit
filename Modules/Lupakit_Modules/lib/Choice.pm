#!/usr/bin/perl
#
package Choice;

use feature qw/switch/;

sub choice_menu_principale {

    my $option = <STDIN>;
    chomp $option;

    given ($option) {

        when (1) { Genpass::genpass_login(); }

        when (2) { Equazioni::equazioni_fibonacci(); }

        when (3) { Insert::insert_hosts_list(); }

#       when (4) { Change::change_copy_key(); }

#       when (5) { Change::change_password(); }

#       when (6) { Change::change_user_add(); }

#       when (7) { Change::change_user_remove(); }

#       when (8) { Insert::insert_script(); }

#       when (9) { Execution::execution_script(); }

#       when (10) { Report::                  ; }


#        when (10) { Report::report_genpass(); }
#        when (11) { Report::report_fibonacci(); }
#        when (12) { Report::report_insert_script(); }
#        when (13) { Report::report_change_password(); }
#        when (14) { Report::report_change_copy_key(); }
#        when (15) { Report::report_change_user_add(); }
#        when (16) { Report::report_change_user_remove(); }
#        when (17) { Report::report_execution_script(); }
#        default   { print "errore\n"; }
#    default   { Messages::print $message{errore_ins}; }
    }

}




1;
