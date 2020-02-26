pied_ep = 10;
pied_ht = 50;

table_lg = 40;
table_ep = 5;

difference()
{
    cube([table_lg,table_lg,pied_ht+table_ep]);
    
    translate([pied_ep,-0.01,-0.01])
    cube([table_lg-2*pied_ep,table_lg+0.02,pied_ht+0.01]);
    
    translate([-0.01,pied_ep,-0.01])
    cube([table_lg+0.02,table_lg-2*pied_ep,pied_ht+0.01]);
}