module InteriorWall(y){color("lemonchiffon",Opacity)cube([5/12,y,8]);}
module ExteriorWall(y){color("pink",Opacity)cube([5/12,y,8]);}

Opacity=0.8;

module Pump(){color("darkgray",Opacity)cube([3,4,1]);}
module AirConditioner(){color("darkgray",Opacity)cube([3,8.75,1]);}
module Shed(){color("darkgray",Opacity)cube([8,10,1]);}

street=[[0,0],[150,0],[150,20],[0,20]];
translate([-25,-10,-1])color("Gray")linear_extrude(height = 1, center = true, convexity = 10, twist = 0)polygon(street);

parkway=[[0,0],[100,0],[100,15],[0,15]];
translate([0,10,-1])color("Aquamarine")linear_extrude(height = 1, center = true, convexity = 10, twist = 0)polygon(parkway);

lot=[[100,0],[0,0],[0,117.64],[100,117.54]];
translate([0,25,-1])color("azure")linear_extrude(height = 1, center = true, convexity = 10, twist = 0)polygon(lot);


module InteriorWall(y){color("lemonchiffon",Opacity)cube([5/12,y,8]);}
module ExteriorWall(y){color("pink",Opacity)cube([5/12,y,8]);}


moveHouse=[20.75,70];

p0=[0,0]+moveHouse;
p1=p0+[0,44.5];
p2=p1+[19.25,0];
p3=p2+[0,-10.10];
p4=p3+[26,0];
p5=p4+[0,-34.4];
p6=p5+[-12,0];
p7=p6+[0,3];
p8=p7+[-4,0];
p9=p8+[0,-3];
p10=[0,0];
p11=[0,0];
p12=[0,0];
p13=[0,0];
p14=[0,0];
p15=[0,0];
p16=[0,0];
p17=[0,0];

a=[p0,p1,p2,p3,p4,p5,p6,p7,p8,p9];

color("LightGray",Opacity)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(a);

raise=[0,0,1];
 
translate(p0)translate(raise)ExteriorWall(44.5);
translate(p1)translate(raise)rotate([0,0,270])ExteriorWall(19.25);
translate(p1+[19.25,-10.1])translate(raise)rotate([0,0,270])ExteriorWall(26);
translate(p1+[19.25,0])translate(raise)rotate([0,0,180])ExteriorWall(10.1+5/12);
translate(p4)translate(raise)rotate([0,0,180])ExteriorWall(44.5-10.1);
translate(p5+[-12,0,0])translate(raise)ExteriorWall(3);
translate(p5+[-12-4,3,0])translate(raise)rotate([0,0,180])ExteriorWall(3);
translate(p5)rotate([0,0,90])translate(raise)ExteriorWall(12);
translate(p5+[-12+5/12,3,0])translate(raise)rotate([0,0,90])ExteriorWall(4+2*5/12);
translate(p5+[-12-4,0,0])translate(raise)rotate([0,0,90])ExteriorWall(19.25+26-12-4);


por0=[0,0];
por1=[0,5];
por2=por1+[19,0];
por3=por2+[0,3];
por4=por3+[4,0];
por5=por4+[0,-3];
por6=por5+[3,0];
por7=por6+[0,-5];

porch=[por0,por1,por2,por3,por4,por5,por6,por7];

translate(moveHouse+[10.25,-5])color("Cornsilk",0.8)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(porch);

deck0=[0,0];
deck1=deck0+[0,10.10];
deck2=deck1+[26,0];
deck3=deck2+[0,-10.10];

deck=[deck0,deck1,deck2,deck3];

translate(p3)color("Cornsilk",0.8)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(deck);

dr0=[0,0];
dr1=dr0+[0,-55];
dr2=dr1+[2+10/12,-5];
dr3=dr2+[-14-4/12,0];
dr4=dr3+[2+10/12,5];
dr5=dr4+[0,15];
dr6=dr5+[-9,17.5];
dr7=dr6+[0,18];
dr8=dr7+[9,0];
dr9=dr8+[0,4.5];

driveway=[dr0,dr1,dr2,dr3,dr4,dr5,dr6,dr7,dr8,dr9];

translate(moveHouse+[10.25,0])translate([0,0,-1])color("gray",Opacity)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(driveway);

translate(p1)translate([-3,-12-4])translate([0,0,-1])Pump();
translate(p1)translate([-3,-12-4-1-8.75])translate([0,0,-1])AirConditioner();
translate(p1)translate([-3-8,-12-4-1-8.75-10-4])translate([0,0,-1])Shed();

translate([0,114,-1])color("black",Opacity)cube([20.75,0.5,1]);
translate([7, 60,-.5]) {color("black",Opacity)rotate(90)
   text("W ~1969 sqft", font = "Liberation Sans", size=3);
 }

translate([66-0.5,70,-1])rotate(270)color("black",Opacity)cube([60,0.5,1]);
translate([40, 40,-.5]) {color("black",Opacity)
   text("S 1963 sqft", font = "Liberation Sans", size=3);
 }
translate([70, 45,-.5]) {color("black",Opacity)
   text("SE 34' x 60'", font = "Liberation Sans", size=3);
 }translate([70, 40,-.5]) {color("black",Opacity)
   text("= 2040 sqft", font = "Liberation Sans", size=3);
 }

translate([66,70,-1])color("black",Opacity)cube([34,0.5,1]);
translate([70, 95,-.5]) {color("black",Opacity)
   text("E 34.0' x 44.5'", font = "Liberation Sans", size=3);
 }translate([70, 90,-.5]) {color("black",Opacity)
   text("= 1513 sqft", font = "Liberation Sans", size=3);
 }

translate([66,114,-1])color("black",Opacity)cube([34,0.5,1]);
translate([40, 130,-.5]) {color("black",Opacity)
   text("N 28.5' x 100.0'", font = "Liberation Sans", size=3);
 }translate([40, 125,-.5]) {color("black",Opacity)
   text("= 2800 sqft", font = "Liberation Sans", size=3);
 }