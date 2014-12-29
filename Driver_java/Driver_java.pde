//Declaring variables
PShape square;
float x = 100;
float y = 100;
float xspeed = 0;
float yspeed = 0;
float posx = 0;
float posy = 0;
PShape unit;
boolean v1;

//This gets run once at the beginning of the program
void setup(){
  size(1000,800,P2D);
  rectMode(CENTER);
  stroke(0);
  fill(0);
  rect(10,10,100,100);
  
  smooth();
  
}

//Run every frame
void draw(){
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  background(255);
  stroke(0);
  fill(0);
  rect(10,10,100,100);
  rect(0,800,100,100);
  //Sequence for moving the vector around and creating a n
  //ew unit on clicking on the bottom left rect
  
  if (mousePressed){
    
    if((mouseX<100)&&(mouseY>700)){
      stroke(0);
      fill(175);
      v1 = true;
    }
    else{
    
    xspeed = (mouseX-x)/10;
    yspeed = (mouseY-y)/10;
    posx = mouseX;
    posy = mouseY;
    }
    
    
  }
  if((x>=posx-1 && x<=posx+1) && (y>=posy-1 && y<=posy+1)){
    xspeed = 0;
    yspeed = 0;
  }
  
  x=x+xspeed;
  y=y+yspeed;
  
  if (v1){
    stroke(0);
    fill(175);
    ellipse(100,100,16,16);
  }
   
  stroke(0);
  fill(175);
  ellipse(x,y,16,16);
}
