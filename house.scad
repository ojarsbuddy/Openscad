module InteriorWall(){color("lemonchiffon",Opacity)cube([5/12,20,8]);}
module ExteriorWall(y){color("pink",Opacity)cube([5/12,y,8]);}

Opacity=0.3;

p0=[0,0];
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

color("Gray",0.3)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(a);

raise=[0,0,1];

translate(p0)translate(raise)ExteriorWall(44.5);
translate([0,44.5,0])translate(raise)rotate([0,0,270])ExteriorWall(19.25);
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

translate([10.25,-5])color("Cornsilk",0.8)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(porch);

deck0=[0,0];
deck1=deck0+[0,10.10];
deck2=deck1+[26,0];
deck3=deck2+[0,-10.10];

deck=[deck0,deck1,deck2,deck3];

translate(p3)color("Cornsilk",0.8)linear_extrude(height = 2, center = true, convexity = 10, twist = 0)polygon(deck);




