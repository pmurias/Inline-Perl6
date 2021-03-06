use common::sense;

use FindBin qw($Bin);
use Inline::Perl6;
use Test::More;

ok(my $p6 = Inline::Perl6->new);

$p6->run("use lib '$Bin/lib'");
$p6->use('Perl6Test');
ok(my $tester = $p6->invoke('Perl6Test', 'new'));
is($tester->get_one, 1);
undef $tester;

done_testing;
