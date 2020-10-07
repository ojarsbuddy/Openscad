$fn=50;
module u(){color("red")cylinder(h=9,r=0.1);color("red")translate([0,0,9])cylinder(h=1,r1=0.5,r2=0);}
module v(){color("green")cylinder(h=9,r=0.1);color("green")translate([0,0,9])cylinder(h=1,r1=0.5,r2=0);}

rotate(a=-45, v=[1,0,1])u();
rotate(a=45, v=[1,1,0])v();
