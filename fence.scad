//Globals
$fn=100;
Opacity=0.4;

//Posts
module Post(){color("red",Opacity)cube([3.5,3.5,40]);}
translate([0,40,0])Post();
translate([0,0,0])Post();
translate([0,-40,0])Post();

//Rails
module Rail(){color("slategray",Opacity)cube([1.5,80+3.5,3.5]);}
translate([-1.5,-40,10-1.75])Rail();
translate([-1.5,-40,30-1.75])Rail();

//Pickets
module Picket(){color("maroon",Opacity)cube([0.5,3.5,46]);}
module Tip(){color("maroon",Opacity)polyhedron( CubePoints, CubeFaces );}
for (a =[0:20]){
translate([-1.5-0.5,-40+a*4,0])Picket();  
translate([-1.5-0.5,-40+a*4,46])Tip();
}

 
CubePoints = [
  [ 0, 0, 0],  //0
  [ 0.5, 0, 0 ],  //1
  [ 0.5, 3.5, 0 ],  //2
  [ 0, 3.5, 0 ],  //3
  [ 0, 1, 1 ],  //4
  [ 0.5, 1, 1 ],  //5
  [ 0.5, 2.5, 1 ],  //6
  [ 0, 2.5, 1 ]]; //7
   
CubeFaces = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left

