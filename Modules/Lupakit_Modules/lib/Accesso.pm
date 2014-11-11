#!/usr/bin/perl;

package Accesso;

sub cambia_password {

    use Expect;

    $Expect::Debug = 1;

    my ($username, $oldpass, $newpass, $host) = @_;

    my $timeout = '30';

    #Collegamento SSH a $host e cambio password scaduta con una nuova:
    my $exp = Expect->spawn("ssh -t -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $username\@$host")
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

1;
