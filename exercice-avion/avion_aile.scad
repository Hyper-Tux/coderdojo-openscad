module avion_aile(aa_lg=70, aa_pf=200, aa_ht=20)
{
    translate([-aa_lg/2, 0, -aa_ht/2])
    cube([aa_lg, aa_pf, aa_ht]);
}


avion_aile();