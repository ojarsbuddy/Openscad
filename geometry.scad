$fn=50;
module u(){color("red")cylinder(h=9,r=0.1);color("red")translate([0,0,9])cylinder(h=1,r1=0.5,r2=0);}
module v(){color("green")cylinder(h=9,r=0.1);color("green")translate([0,0,9])cylinder(h=1,r1=0.5,r2=0);}

rotate(a=-45, v=[1,0,1])u();
rotate(a=45, v=[1,1,0])v();

u=[4,0];
v=[-4,4];
wadd=u+v;
wmul=u*v;
echo (u,v,wadd,wmul);
echo(u[0],u[1]);
function wedge(u,v)=u[0]*v[1]-u[1]*v[0];
wout=wedge(u,v);
echo (wout);

module dot(){circle(0.25);};
color("black")dot();
translate(u)color("red")dot();
translate(v)color("blue")dot();
translate(wadd)dot();

translate(wadd+[1,0])text(str("u = ",u,"   norm = ",sqrt(u*u)),size=1);
translate(wadd+[1,-2])text(str("v = ",v,"   norm = ",sqrt(v*v)),size=1);
translate(wadd+[1,-4])text(str("inner = ",wmul,"      cosine = ",wmul/(sqrt(u*u)*sqrt(v*v))),size=1);
translate(wadd+[1,-6])text(str("outer = ",wout,"      sine = ",wout/(sqrt(u*u)*sqrt(v*v))),size=1);

s=[wmul,u,v,wout];
echo(s);