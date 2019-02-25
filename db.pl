use strict;
use warnings;
use DBI;

my $dbname = "PROD_PG10_db";

my $db = DBI->connect("DBI:ODBC:driver={Ingres};Server=AJAX;Database=$dbname");

#my $sql = "select * from sym_statusbit WHERE statusbitname like 'UBANOV'";

my $sql = "select top 10 unterartname from univ_elunterart unterart";

my $sth = $db->prepare($sql);
$sth->execute;

my @row = $sth->fetch;
 #print @row;

#for(my $i=0; $i<scalar(@row); $i++){
#	print("$row[$i]\n");
#}

my $i = 1;
while (my $row = $sth->fetchrow_hashref) {
	print "$row->{unterartname}\n";
    #print "row ", $i++, "\n";
    #for my $col (keys %$row) {
    #    print "\t$col is $row->{$col}\n";
    #}
}



$sth->finish();
$db->disconnect();

