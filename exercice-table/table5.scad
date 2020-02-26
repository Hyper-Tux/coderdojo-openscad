pied_ep = 10;
pied_ht = 50;

table_lg = 40;
table_ep = 5;

//union()
{
    for(vX=[0:table_lg], vY=[0:table_lg], vZ=[0:pied_ht+table_ep])
        if ((vX<pied_ep||vX>table_lg-pied_ep)&&(vY<pied_ep||vY>table_lg-pied_ep) || vZ>pied_ht)
            translate([vX, vY, vZ])
            cube(1);
}