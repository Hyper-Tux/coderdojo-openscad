module avion_arriere()
{
    aaq_lg = 70;
    aaq_pf = 20;
    aaq_ht = 20;
    
    translate([-aaq_lg,-aaq_pf/2,-aaq_ht/2])
    avion_arriere_queue(aaq_lg, aaq_pf, aaq_ht);
  
    aad_lg = 50;
    aad_pf = 15;
    aad_ht = 60;
    
    translate([-aaq_lg,0,aaq_ht/2])
    avion_arriere_derive(aad_lg, aad_pf, aad_ht);
  
    aas_lg = 50;
    aas_pf = 80;
    aas_ht = 10;
    
    translate([-aaq_lg,0,0])
    {
        translate([0,aaq_pf/2,0])
        avion_arriere_stabilisateur(aas_lg, aas_pf, aas_ht);
        
        translate([0,-aaq_pf/2,0])
        mirror([0,1,0])
        avion_arriere_stabilisateur(aas_lg, aas_pf, aas_ht);
    }
}

module avion_arriere_queue(lg, pf, ht)
{
    cube([lg, pf, ht]);
}

module avion_arriere_derive(lg, pf, ht)
{
    translate([0, -pf/2, 0])
    cube([lg, pf, ht]);
}

module avion_arriere_stabilisateur(lg, pf, ht)
{
    translate([0,0,-ht])
    cube([lg, pf, ht]);
}

avion_arriere();