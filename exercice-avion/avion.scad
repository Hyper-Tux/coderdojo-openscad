use <avion_aile.scad>;
use <avion_arriere.scad>;
use <avion_corps.scad>;


module avion(acf_lg=200, acf_pf=40, acf_ht=40)
{
    translate([0,0,0])
    avion_corps(acf_lg, acf_pf, acf_ht);

    translate([-acf_lg/2,0,0])
    avion_arriere();

    translate([0,acf_pf/2,0])
    avion_aile();

    translate([0,-acf_pf/2,0])
    mirror([0,1,0])
    avion_aile();
}


acf_lg = 200;
acf_pf = 40;
acf_ht = 40;

ag = sin(($t-0.5)*720)*500;

echo(ag);
rotate([0,0,$t*360])
{
    dis = 1000;
    
    color("red")
    translate([0,dis,ag])
    mirror([1,0,0])
    avion();
        
    color("blue")
    translate([0,-dis,-ag])
    avion();
}
