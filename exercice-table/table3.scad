pied_ep = 10;
pied_ht = 50;

table_lg = 40;
table_ep = 5;
table_rebord = 2;

union()
{
    for(vX=[-1,1], vY=[-1,1])
        translate([vX*(table_lg-pied_ep)/2,vY*(table_lg-pied_ep)/2,pied_ht/2])
        cube([pied_ep, pied_ep, pied_ht], center=true);
    
    translate([0,0,pied_ht+table_ep/2])
    cube([table_lg+2*table_rebord,table_lg+2*table_rebord,table_ep], center=true);
}