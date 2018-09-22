#! /usr/bin/perl -w
use Bio::Seq;

my $a="ATGCAAATGGTTGAATTGATGTGCAATGGAACTTTTGAAGACAAAGACCCTGATGAAGCAATGGAGTACTTAGACTTAAGAAATCTTGAGGAAACATTTCATGCATTCATTGAAAAGCAAGAGACAATCAATACTCAACTTGCTCAACATATGAAAGATTTTAAAAATACTCTTGCAAAATTAACATCTGCTCTTAGTTTCCAAGAGAAAGGTAAGTTTCCATCTCAACCACAACAAAATCCTAAGGGGCAATACAATGCAAATGCAAGTAGTTCCGAAAGCCAACACATGGATCAAGTCAAATCAGTCACTACTATTCGCAGTGGTAAGGTTACTGAAAAACCCTCTCTTGAACCTTATGAGAAAGATGATGAGTCAATCTCTGAGGGTAAGGAAGACGTTGAAATTAAAAATTGCAAAGAAAAGACTGATTCTCCGCCAGCACTTCCATTTCCTCAAGCCATGACCAAACAAAGGAAAGTAAGAATCAATATACCTTTGCTTGATGCTATTAAACAGATTCCTTCCTATGCTAAATTTTTGAAAGATCTATGCACTGTGAAGAGAAAACTGAATGTAATTTCTTGCTTTATTGGAGAGCATAAAATTGAAAGAGCCTTACTTGATCTTGGTGCTAGTACGAATTTACTTCCATATTCAGTTTTTCAAAGTCTCAATCTAGGACGTCCGTTTCTTGCAACTTCTAACGCATTAATTAATTGTAGGAATGGACTGATGAAGCTATCATTTGGAAACATGACATTGGAGATGAATATTTTCAACATTTGCAAGCAACCTGGAGATGATAATGATTTACAAGAAGTAGATCATATTGATGAATTAGTTTATGATCAACTTGAATCTACTTTAAGAGATTTGCCAGCTGATTGGAGTACCCAAGATAAAGAAAAGTTTTTGAATAAAGTGAAGAACTTCTATGGTGATGACTCTAACTTATTCAAATATTGTCCCGATCAGATATTTCAAAGATTCATTCCTAACAATGAGAATGTGATTACAAAAATTTACTGTGCTAGATGTACAAGATTGAGATTGTTAATGAATCATGGAATTCCTGAAGATATTTGCTGGTTGATTGAAGCAAAAGTTCGATTATCAGGTGAGTCCTCTAACTCCTTCATTTCACACGTACCTGGAACAGGAGGTAGTCAAGTTTTGGGAGTCGTTCCTAAAGCTGTAGCACAAGGGGACATCATTAGAAAAACAATTGGAGAGGAACTTCAGGTCTCTACAATATCAGCTCGAATGAATGCAATGTTTAACCATATTGATGCCTTCATTACTTTACCAAGTTTGTTAAATGTTAATGGTTATTATGATAAGTTGTTGTCTTTTCTTGATCACGCTGTGGAACAGGAATTTCTAACATCTTTTGCACGACAAATCATATTCTCTGCTGCTACTGCTGAACAATTGATTGACCAACTACAATATTTCGTTCCTGTAATTGATCCTTACATGAGTCGCATAAATTGGTTAACCAAGGAAAGCCGTAAAAAGCTTAGATTGGATTTGAGCCTTCATTTATGA";
my $b=translate_nucl($a);
print "$b\n";

sub translate_nucl{
    my $seq=shift;
    my $seq_obj=Bio::Seq->new(-seq=>$seq,-alphabet=>'dna');
    my $pro=$seq_obj->translate;
    $pro=$pro->seq;
    return($pro);
}