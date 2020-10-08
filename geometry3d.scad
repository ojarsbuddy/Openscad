$fn=50;

u=[4,3,0];
v=[4,3,3];
wadd=u+v;
wmul=u*v;
echo (u,v,wadd,wmul);
echo(u[0],u[1],u[2]);
function wedge(u,v)=[u[0]*v[1]-u[1]*v[0],u[0]*v[2]-u[2]*v[0],u[1]*v[2]-u[2]*v[1]];
wout=wedge(u,v);
echo (wout);

module dot(){sphere(0.25);};
color("black")dot();
translate(u)color("red")dot();
translate(v)color("blue")dot();
translate(wadd)dot();

translate(wadd+[1,0])color("red")linear_extrude(0.1)text(str("u = ",u,"   norm = ",sqrt(u*u)),size=1);
translate(wadd+[1,-2])color("red")linear_extrude(0.1)text(str("v = ",v,"   norm = ",sqrt(v*v)),size=1);
translate(wadd+[1,-4])color("red")linear_extrude(0.1)text(str("inner = ",wmul,"      cosine = ",wmul/(sqrt(u*u)*sqrt(v*v))),size=1);
translate(wadd+[1,-6])color("red")linear_extrude(0.1)text(str("outer = ",wout,"   norm = ",sqrt(wout*wout),"      sine = ",sqrt(wout*wout/((u*u)*(v*v)))),size=1);

s=[wmul,u,v,wout];
echo(s);