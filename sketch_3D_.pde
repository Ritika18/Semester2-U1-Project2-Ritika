/*
Description: This was getting familiar with 3D. I mainly played around with different 
functions, adding light, different code to make it move, etc. I also spent a lot of time
working on 3D collisions which I found was somewhat similar to 2D collisions but it
was much harder to figure out how to do that in 3D.
*/

import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
PeasyCam cam;

//creating my objects
Cube blueCube;
Cube pinkCube;
Sphere sphere;

void setup()
{
  fullScreen(P3D);
  
  //setting up the 3D library
  cam = new PeasyCam(this, 1000);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
  
  //constructor to create the cubes and sphere
  blueCube = new Cube(new PVector(150, 150, 10), new PVector(50,100,200), 100);
  pinkCube = new Cube(new PVector(160,160,10), new PVector (200,50,168), 100);
  sphere = new Sphere(new PVector(10,10,10), new PVector (175,255,32), 100, false);
  
}

void draw()
{
  //this is to use the functions in the classes
  sphere.Update();
  sphere.Draw();
  
  blueCube.Draw();
  pinkCube.Draw();
  
}

//Below are some notes on things I learned and played with
/*
MAKE A PYRAMID: (all in void draw)

translate(width/2, height/2, 0);
stroke(255);
rotateX(PI/2);
rotateZ(-PI/6);
noFill();

beginShape();
vertex(-100, -100, -100);
vertex( 100, -100, -100);
vertex(   0,    0,  100);

vertex( 100, -100, -100);
vertex( 100,  100, -100);
vertex(   0,    0,  100);

vertex( 100, 100, -100);
vertex(-100, 100, -100);
vertex(   0,   0,  100);

vertex(-100,  100, -100);
vertex(-100, -100, -100);
vertex(   0,    0,  100);
endShape();
*/


/*
TO ADD AN IMAGE TO MY SHAPE:
PImage img;

void setup() {
  size(640, 360, P3D);
  img = loadImage("berlin-1.jpg");
}

// Call texture(). The texture() function must be called between beginShape() and endShape() and before any calls to vertex(). The texture() function receives only one argument, the PImage that will be applied as a texture.

void draw() {
  background(0);  
  translate(width / 2, height / 2);
  stroke(255);
  fill(127);
  beginShape();
  texture(img);
*/


/*
TYPES OF LIGHT FUNCTIONS

lights() - which just adds some life to whatever part is pressed

ambientLight(252,164,239) -- adds a color filtered light

directionalLight(0, 255, 0, 0, -1, 0) -- which adds color stronger at a certain place
// This is used (r,g,b,x,y,z); the x y and z is what direction the light is going

*/