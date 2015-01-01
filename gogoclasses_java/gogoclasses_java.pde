//Declaring variables
PShape square;
friendlyUnit myUnit;
friendlyUnit myUnit1;

PShape unit;
boolean v0=true; //indicates if unit0 alive
boolean v1=false; //indicates if unit1 alive

boolean unit0=true; //indicates if unit0 seleceted to be moved
boolean unit1=false; //indicates if unit1 seleceted to be moved

//This gets run once at the beginning of the program
void setup(){
  size(800,600,P2D);
  rectMode(CENTER);
  stroke(0);
  fill(0);
  rect(25,25,50,50);
  rect(25,550,50,50);
  smooth();
  myUnit = new friendlyUnit(200,200,0,0);
}

//Run every frame
void draw(){
  noStroke();
  fill(255,10);
  rect(0,0,width,height);
  background(255);
  stroke(0);
  fill(0);
  rect(25,25,50,50);
  rect(25,575,50,50);
  //Sequence for moving the vector around and creating a n
  //ew unit on clicking on the bottom left rect
  if (key=='0' && v0){
     unit0=true;
     unit1=false;
  }
  if (key=='1' && v1){
      unit0=false;
      unit1=true;
  }
  if (mousePressed){
    
    if((mouseX<=50)&&(mouseY>=550)){
      stroke(0);
      fill(175);
      v1 = true;
      myUnit1 = new friendlyUnit(200,200,0,0);
    }
    else{
    if (unit0){
    myUnit.setXSpeed((mouseX-myUnit.getX())/100);
    myUnit.setYSpeed((mouseY-myUnit.getY())/100);
    }
    if (unit1){
        
      myUnit1.setXSpeed((mouseX-myUnit1.getX())/100);
      myUnit1.setYSpeed((mouseY-myUnit1.getY())/100);
    }
    
    }
    
    
  }
  if (unit0){
    if((myUnit.getX()>=mouseX-1 && myUnit.getX()<=mouseX+1) && (myUnit.getY()>=mouseY-1 && myUnit.getY()<=mouseY+1)){
      myUnit.setXSpeed(0);
      myUnit.setYSpeed(0);
    }
  }
  else if (unit1){
    if((myUnit1.getX()>=mouseX-1 && myUnit1.getX()<=mouseX+1) && (myUnit1.getY()>=mouseY-1 && myUnit1.getY()<=mouseY+1)){
      myUnit1.setXSpeed(0);
      myUnit1.setYSpeed(0);
    }
  }
  if (v0){
    stroke(0);
    fill(175);
    
    if (unit0){
       myUnit.move();
    }
    myUnit.display();
  }
  if (v1){
    stroke(0);
    fill(175);
    
    if (unit1){
      myUnit1.move();
    }
    myUnit1.display();
  }
   
  
}


class friendlyUnit{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  friendlyUnit(float x,float y,float xs,float ys){
    xpos = x;
    ypos = y;
    xs = xspeed;
    ys= yspeed;
  }
  void display(){
    ellipse(xpos,ypos,16,16);
  }
  void move(){
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
  }
  float getX(){  
    return xpos;
  }
  float getY(){
    return ypos;
  }  
  float getXSpeed(){
    return xspeed;
  }
  float getYSpeed(){
    return yspeed;
  }
  void setXSpeed(float speed){
    xspeed = speed;
    
  }
  void setYSpeed(float speed2){
    yspeed = speed2;
  }
}

  

