//Globals
$fn=100;
Opacity=0.4;
trap=[[0,0],[10.25,0],[10.25-7*tan(15),7],[7*tan(15),7]];

//Trapezoids
module Trapezoid(){color("Gray",Opacity)translate([-10.25/2,0,0])linear_extrude(height = 3.5, center = false, convexity = 10, twist = 0)polygon(trap);}




r = (10.25/2)/tan(15); // pattern radius
echo ("radius = ",r);
translate([-30,30,0])text (str("flats diameter = ",2*r),size=5);
translate([-30,-30,0])text (str("points diameter = ",2*r/cos(15)),size=5);
n = 12; // number of cars
step = 360/n;
for (i=[0:11]) {
    angle = 30*i+15;
    dx = r*cos(angle);
    dy = r*sin(angle);
    translate([dx,dy,0])
        rotate([0,0,angle+90])
        Trapezoid();
}