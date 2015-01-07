//Declaring variables
PShape square;
friendlyUnit myUnit;
friendlyUnit myUnit1;
enemyUnit enemyUnit;
PShape unit;

float mx;
float my;
boolean unit0=true; //indicates if unit0 seleceted to be moved
boolean unit1=false; //indicates if unit1 seleceted to be moved
int time = 0;
int wait = 1000;
int ttime = 0;
boolean timer;
int gold = 10;
boolean cGold;
int a;
ArrayList<friendlyUnit> friendlies = new ArrayList<friendlyUnit>();
ArrayList<enemyUnit> enemies = new ArrayList<enemyUnit>();

//This gets run once at the beginning of the program
void setup(){
  size(800,600,P2D);
  friendlies.add(myUnit = new friendlyUnit(200,200,0,0,true)); 
  friendlies.add(myUnit1 = new friendlyUnit(200,200,0,0,false));
  enemies.add(enemyUnit = new enemyUnit(400,400,0,0,true));
  myUnit.changeSelected(true);
  rectMode(CENTER);
  myUnit.changeSelected(true);
  stroke(0);
  fill(0);
  rect(25,25,50,50);
  rect(25,550,50,50);
  smooth();
  a = millis();  

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
  if (key=='0' && friendlies.get(0).isAlive()){
     myUnit.changeSelected(true);
     myUnit1.changeSelected(false);
  }
  if (key=='1' && friendlies.get(1).isAlive()){
      myUnit.changeSelected(false);
      myUnit1.changeSelected(true);
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
    for(int i = 0; i < friendlies.size(); i++){
     if(friendlies.get(i).isSelected()){
       friendlies.get(i).setmx(mouseX);
       friendlies.get(i).setmy(mouseY);
       
       friendlies.get(i).setXSpeed((friendlies.get(i).getmx()-friendlies.get(i).getX())/100);
       friendlies.get(i).setYSpeed((friendlies.get(i).getmy()-friendlies.get(i).getY())/100);
      
      }
    
    }
    }
  }
  
  
  for(int i = 0; i < friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      if((friendlies.get(i).getX()>=friendlies.get(i).getmx()-1 && friendlies.get(i).getX()<=friendlies.get(i).getmx()+1) && (friendlies.get(i).getY()>=friendlies.get(i).getmy()-1 && friendlies.get(i).getY()<=friendlies.get(i).getmy()+1)){
        friendlies.get(i).setXSpeed(0);
        friendlies.get(i).setYSpeed(0);
      }
    }
  }
  if ((millis() - time >= wait) && timer==true) {
    
    
    if (cGold == false) {
      gold = gold -1;
      cGold = true;
      
      myUnit1.setAlive(true);
    }
  }
  for(int i = 0; i < friendlies.size(); i++){
   
    if(friendlies.get(i).isAlive()){
      
      stroke(0);
      fill(175);
      friendlies.get(i).move();
      friendlies.get(i).display();
    }
  }
  for (int i =0; i<enemies.size();i++){
    if(enemies.get(i).isAlive()){
        stroke(0);
        fill(72);
        enemies.get(i).move();
        enemies.get(i).display();
    }
  }
  
  for(int i = 0; i < enemies.size(); i++){
    for(int j = 0; j < friendlies.size(); j++){
      if(checkCollision(friendlies.get(j),enemies.get(i))){
        if(ttime == 0){
          ttime = millis();
        }
        if((millis()-ttime)>1000){
          
          friendlies.get(j).changeHealth(friendlies.get(j).getHealth()-1);
          enemies.get(i).changeHealth(friendlies.get(i).getHealth()-1);
          ttime=0;
        }
      }
      //ttime = 0; 
    }
  }
   
  
  text("Gold: "+gold, 100, 590);
  
  textSize(14);
  for(int i = 0; i < friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      text("Health "+friendlies.get(i).getHealth(),friendlies.get(i).getX(),friendlies.get(i).getY()+30);
    }
  }
  for(int i = 0; i < enemies.size(); i++){
    if(enemies.get(i).isAlive()){
      text("Health "+enemies.get(i).getHealth(),enemies.get(i).getX(),enemies.get(i).getY()+30);
    }
  }



}

boolean checkCollision(friendlyUnit f, enemyUnit e){
  if(Math.abs(f.getX()-e.getX()) < 11 && Math.abs(f.getY()-e.getY()) < 121){
    return true;
  }
  else{
    return false;
  }
}


class friendlyUnit{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float mx;
  float my;
  int health;
  boolean alive;
  boolean isSelected;
  friendlyUnit(float x,float y,float xs,float ys, boolean a){
    xpos = x;
    ypos = y;
    xs = xspeed;
    ys= yspeed;
    alive = a;
  }
  int getHealth(){
    return health;
  }
  boolean isAlive(){
    return alive;
  }
  void changeSelected(boolean s){
    isSelected = s;
  }
  boolean isSelected(){
    return isSelected;
  }
  void setAlive(boolean a){
    alive = a;
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
  boolean alive;
  enemyUnit(float x,float y,float xs,float ys, boolean a){
    xpos = x;
    ypos = y;
    xs = xspeed;
    ys= yspeed;
    alive = a;
  }
  
  boolean isAlive(){
    return alive;
  }
  int getHealth(){
    return health;
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


