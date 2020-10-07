//Globals
$fn=100;
Opacity=0.6;

//Posts
module Step(){color("tan",Opacity)cube([5.5,48,1.5]);}
translate([0,0,5.5])Step();
for (a=[0:2]){
translate([6*5.5+a*5.5,0,5.5])Step();}
for (a=[0:6]){
translate([a*5.5,0,1.5+2*5.5])Step();}


//Rails
module BottomRail(){color("gray",Opacity)cube([9*5.5,1.5,5.5]);}
translate([0,6,0])BottomRail();
translate([0,42-1.5,0])BottomRail();

module TopRail(){color("gray",Opacity)cube([7*5.5,1.5,5.5]);}
translate([0,6,5.5+1.5])TopRail();
translate([0,42-1.5,5.5+1.5])TopRail();

//Supports
module Support(){color("lightgray",Opacity)cube([1.5,7.5,5.5]);}
translate([0,5.5+1.5,0])Support();
translate([0,5.5+1.5,5.5+1.5])Support();
translate([0,48-5.5-1.5-7.5,0])Support();
translate([0,48-5.5-1.5-7.5,5.5+1.5])Support();
 
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

