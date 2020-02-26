module avion_corps(acf_lg=200, acf_pf=40, acf_ht=40)
{
//    acf_lg = 200;
//    acf_pf = 40;
//    acf_ht = 40;
    
    avion_corps_fuselage(acf_lg, acf_pf, acf_ht);
    
    acn_lg = 30;
    acn_pf = 10;
    acn_ht = 10;
    
    translate([acf_lg/2-0.01, 0, 0])
    avion_corps_nez(acn_lg, acn_pf, acn_ht, 5, 50, 15, 3);
    
    ach_lg = 50;
    ach_pf = 30;
    ach_ht = 20;
    
    translate([-ach_lg/2, -ach_pf/2, acf_ht/2-0.01])
    avion_corps_habitacle(ach_lg, ach_pf, ach_ht);
}

module avion_corps_fuselage(lg, pf, ht)
{
    cube([lg, pf, ht], center=true);
}

module avion_corps_nez(lg, pf, ht, pale_lg, pale_pf, pale_ht, pale_nb)
{
    translate([0, -pf/2, -ht/2])
    cube([lg, pf, ht]);
    
    rotate([$t*360*10,0,0])
    for (i=[0:pale_nb])
        rotate([360/pale_nb*i,0,0])
        translate([lg-pale_lg*1.5, 0, -pale_ht/2])
        cube([pale_lg, pale_pf, pale_ht]);
}

module avion_corps_habitacle(lg, pf, ht)
{
    cube([lg, pf, ht]);
}

avion_corps();