use strict;
use warnings;

package Expect;

sub my_expect {
#!/usr/bin/perl -w

#Description: Change default password to remote linux hosts

use strict;
use Expect;

#$Expect::Debug = 1;
my $timeout = '30';
my $username = 'pippo';
my $oldpass = 'password_default';
my $newpass = 'Gtn_547_0ghr';

open(HOSTS,"hosts.txt")
            or die "Error while opening file:$!\n";
            chomp( my @hosts = <HOSTS> );
close(HOSTS)
            or die "Error while closing file:$!\n";

foreach (@hosts) {
my $exp = Expect->spawn("ssh -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $username\@$_")
    or die "Cannot spawn ssh: $!\n";

my $spawn_ok;

$exp->expect($timeout,
             [ qr /\@.*password: $/ => sub {
                                $spawn_ok = 1;
                                my $expect = shift;
                                $expect->send("${oldpass}\n");
                                exp_continue;} ],
             [ qr /\(current\) UNIX password:/ => sub {
                                my $expect = shift;
                                $expect->send("${oldpass}\n");
                                exp_continue;} ],
             [ qr /New password:/ => sub {
                                my $expect = shift;
                                $expect->send("${newpass}\n");
                                exp_continue;} ],
             [ qr /Retype new password:/ => sub {
                                my $expect = shift;
                                $expect->send("${newpass}\n");
                                exp_continue;}],
        [ eof => sub {
                if ($spawn_ok) {
                        die "ERROR: premature EOF in login.\n";}
                else {
                        die "ERROR: could not spawn telnet.\n";}}],
        [ timeout => sub {die "No login.\n";}],

        '-re', qr'[#>:] $', #' wait for shell prompt, then exit expect
        );
        }


}
1;
