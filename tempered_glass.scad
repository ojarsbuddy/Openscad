//Globals
$fn=100;
Opacity=0.4;

//Tempered glass sheet
width=15.75;
height=17;
thickness=0.125;
module Plate(){color("slategray",Opacity)cube([width,thickness,height]);}
module Hole(){color("slategray",Opacity)translate([0,1,0])rotate([90,0,0])cylinder(h=2,r=.375/2);}

delWidth=14.75;
delHeight=15.4375;
dx=(15.75-delWidth)/2;
dz=(17-15.5)/2;

difference(){
translate([0,0,0])Plate();
translate([dx,0,dz])rotate([0,90,0])Hole();
translate([dx+delWidth,0,dz])rotate([0,90,0])Hole();
translate([dx,0,dz+delHeight])rotate([0,90,0])Hole();
translate([dx+delWidth,0,dz+delHeight])rotate([0,90,0])Hole();
}
 