PShape square;
float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;
void setup(){
  size(1000,800,P2D);
  rectMode(CENTER);
  rect(0,800,400,400);
  rect(1000,0,400,400);
  ellipse(0,800,50,50);
  smooth();
 
  
 
}

void draw(){
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  x+=xspeed;
  y+=yspeed;
  stroke(0);
  fill(175);
  ellipse(x,y,16,16);
  
}
