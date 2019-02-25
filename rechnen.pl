use strict;
use warnings;

my($zahl1, $zahl2) = @ARGV;

open(my $fh, '>', 'D:\\git\\ipa-test-perl\\test.txt');
print $fh "$zahl1 + $zahl2";
close $fh;

print $zahl1+$zahl2;