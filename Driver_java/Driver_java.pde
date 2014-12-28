PShape square;
float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;

void setup(){
  size(1000,800,P2D);
  rectMode(CENTER);
  stroke(0);
  fill(0);
  rect(10,10,100,100);
  smooth();
  
}

void draw(){
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  background(255);
  stroke(0);
  fill(0);
  rect(10,10,100,100);
  xspeed = (mouseX-x)/10;
  yspeed = (mouseY-y)/10;
  x=x+xspeed;
  y=y+yspeed;
  
  stroke(0);
  fill(175);
  ellipse(x,y,16,16);
}
