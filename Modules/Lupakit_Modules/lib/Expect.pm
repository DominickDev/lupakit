#!/usr/bin/perl;

package Expect;

use Expect;
#$Expect::Debug = 1;
use strict;
use warnings;

sub expect_copy_key {

    #---------------------------------------------
    #
    # ABSTRACT:
    # Copy SSH pubblic key on remote host by automatic login.
    # Expect module is required.
    #
    #---------------------------------------------

    #-----------------------------------------------
    #INPUT
    my $timeout = '30';
    
    #Questi parametri verranno letti in futuro da un file locale secret.txt...in progress
    my $username = 'pippo';
    my $oldpass = 'password_default';
    my $newpass = 'Gtn_547_0ghr';
    
    #PROCESS

    #OUTPUT
    #------------------------------------------------

    Readlist::read_host();

    my $exp = Expect->spawn("ssh-copy-id -i -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $username\@$hostname")
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

sub expect_ssh {

    use Expect;

    #$Expect::Debug = 1;

    my $timeout = '30';
    my $username = 'pippo';
    my $oldpass = 'password_default';
    my $newpass = 'Gtn_547_0ghr';

    Readlist::read_host();

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
