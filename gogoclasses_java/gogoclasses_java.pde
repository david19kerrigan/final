//Declaring variables
PShape square;
friendlyUnit myUnit;
friendlyUnit myUnit1;
friendlyUnit enemyUnit0;
PShape unit;
boolean v0=true; //indicates if unit0 alive
boolean v1=false; //indicates if unit1 alive
float mx;
float my;
boolean unit0=true; //indicates if unit0 seleceted to be moved
boolean unit1=false; //indicates if unit1 seleceted to be moved
int time = 0;
int wait = 1000;
boolean timer;
int gold = 10;
boolean cGold;
int a;
//This gets run once at the beginning of the program
void setup(){
  size(800,600,P2D);
  rectMode(CENTER);
  stroke(0);
  fill(0);
  rect(25,25,50,50);
  rect(25,550,50,50);
  smooth();
  a = millis();  
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
  textSize(32);
  fill(0, 102, 153);
  text("unit", 0, 550);
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
      time = millis();
      timer = true;
      cGold=false;
      
    }
    else{
    if (unit0){
    myUnit.setmx(mouseX);
    myUnit.setmy(mouseY);
    myUnit.setXSpeed((myUnit.getmx()-myUnit.getX())/100);
    myUnit.setYSpeed((myUnit.getmy()-myUnit.getY())/100);
    }
    if (unit1){
      myUnit1.setmx(mouseX); //look below
      myUnit1.setmy(mouseY);   
      myUnit1.setXSpeed((myUnit1.getmx()-myUnit1.getX())/100);
      myUnit1.setYSpeed((myUnit1.getmy()-myUnit1.getY())/100);
      
    }
    
    }
    /*if (unit0){
     myUnit.setmx(mouseX);
     myUnit.setmy(mouseY);
    }
    if (unit1){
     myUnit1.setmx(mouseX);
     myUnit1.setmy(mouseY); 
    }*/
  }
  if (v0){
    if((myUnit.getX()>=myUnit.getmx()-1 && myUnit.getX()<=myUnit.getmx()+1) && (myUnit.getY()>=myUnit.getmy()-1 && myUnit.getY()<=myUnit.getmy()+1)){
      myUnit.setXSpeed(0);
      myUnit.setYSpeed(0);
    }
  }
  if (v1){
    if((myUnit1.getX()>=myUnit1.getmx()-1 && myUnit1.getX()<=myUnit1.getmx()+1) && (myUnit1.getY()>=myUnit1.getmy()-1 && myUnit1.getY()<=myUnit1.getmy()+1)){
      myUnit1.setXSpeed(0);
      myUnit1.setYSpeed(0);
    }
  }
  if ((millis() - time >= wait) && timer==true) {
    
    
    if (cGold == false) {
      gold = gold -1;
      cGold = true;
      v1 = true;
      myUnit1 = new friendlyUnit(200,200,0,0);
    }
  }
  if (v0){
    stroke(0);
    fill(175);
    myUnit.move();
    /*if (unit0){
       myUnit.move();
    }*/
    myUnit.display();
  }
  if (v1){
    stroke(0);
    fill(175);
    myUnit1.move();
    /*if (unit1){
      myUnit1.move();
     
    }*/
    myUnit1.display();
    
  }
   
  text("Gold: "+gold, 100, 590);
  
}


class friendlyUnit{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float mx;
  float my;
  int health;
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
  float getmx(){
    return mx;
  }
  float getmy(){
    return my;
  }
  void setXSpeed(float speed){
    xspeed = speed;
    
  }
  void setYSpeed(float speed2){
    yspeed = speed2;
  }
  void changeHealth(int h){
    health = health + h;
  }
  void setmx(float positionx){
    mx=positionx;
  }
  void setmy(float positiony){
    my=positiony;
  }  
}

class enemyUnit{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float mx;
  float my;
  int health;
  
  enemyUnit(float x, float y){
    xpos = x;
    ypos = y;
  }
  
  void move(){
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
  }
  
  void display(){
    ellipse(xpos,ypos,16,16);
  }
  void changeHealth(int h){
    health = health + h;
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
  float getmx(){
    return mx;
  }
  float getyx(){
    return my;
  }
  void setXSpeed(float speed){
    xspeed = speed;
    
  }
  void setYSpeed(float speed2){
    yspeed = speed2;
  }
  void setmx(int positionx){
    mx=positionx;
  }
  void setmy(int positiony){
    my=positiony;
  }
}


