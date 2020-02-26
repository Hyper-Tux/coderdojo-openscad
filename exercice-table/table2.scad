pied_ep = 10;
pied_ht = 50;

table_lg = 40;
table_ep = 5;
table_rebord = 2;

union()
{
    cube([pied_ep, pied_ep, pied_ht]);
    
    translate([table_lg-pied_ep,0,0])
    cube([pied_ep, pied_ep, pied_ht]);
    
    translate([0,table_lg-pied_ep,0])
    cube([pied_ep, pied_ep, pied_ht]);
    
    translate([table_lg-pied_ep,table_lg-pied_ep,0])
    cube([pied_ep, pied_ep, pied_ht]);
    
    translate([-table_rebord, -table_rebord, pied_ht])
    cube([table_lg+2*table_rebord, table_lg+2*table_rebord,table_ep]);
}