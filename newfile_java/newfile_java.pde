import java.util.Random;
//Declaring variables
PShape square;
enemy opponent;
friendlyUnit myUnit;
friendlyUnit myUnit1;
friendlyUnit myUnit2;
friendlyUnit myUnit3;
friendlyUnit myUnit4;
friendlyUnit myUnit5;
friendlyUnit myUnit6;
friendlyUnit myUnit7;
friendlyUnit myUnit8;
friendlyUnit myUnit9;
enemyUnit enemyUnit;
enemyUnit enemyUnit1;
enemyUnit enemyUnit2;
enemyUnit enemyUnit3;
enemyUnit enemyUnit4;
enemyUnit enemyUnit5;
enemyUnit enemyUnit6;
enemyUnit enemyUnit7;
enemyUnit enemyUnit8;
enemyUnit enemyUnit9;
PShape unit;
castle myCastle;
castle enemyCastle;
float mx;
float my;
//boolean unit0=true; //indicates if unit0 seleceted to be moved
//boolean unit1=false; //indicates if unit1 seleceted to be moved
int time = 0;
int wait = 1000;
int ttime = 0;
boolean timer;
int gold = 15;
boolean cGold;
int a;
ArrayList<friendlyUnit> friendlies = new ArrayList<friendlyUnit>();
ArrayList<enemyUnit> enemies = new ArrayList<enemyUnit>();
//ArrayList<friendlyUnit> friendnear; 
//ArrayList<friendlyUnit> nearbyfriend = new ArrayList<friendlyUnit>();
//ArrayList<enemyUnit> nearbyenemy = new ArrayList<enemyUnit>();


//This gets run once at the beginning of the program
void setup(){
  size(800,600,P2D);
  opponent = new enemy();
  friendlies.add(myUnit = new friendlyUnit(200,200,0,0,true)); 
  friendlies.add(myUnit1 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit2 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit3 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit4 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit5 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit6 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit7 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit8 = new friendlyUnit(200,200,0,0,false));
  friendlies.add(myUnit9 = new friendlyUnit(200,200,0,0,false));
  enemies.add(enemyUnit = new enemyUnit(500,500,0,0,true));
  enemies.add(enemyUnit1 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit2 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit3 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit4 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit5 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit6 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit7 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit8 = new enemyUnit(500,500,0,0,false));
  enemies.add(enemyUnit9 = new enemyUnit(500,500,0,0,false));
  myCastle = new castle(25,575,30);
  enemyCastle = new castle(775,525,30);
  myUnit.changeSelected(true);
  rectMode(CENTER);
  myUnit.changeSelected(true);
  stroke(0);
  fill(0);
  
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
  
  
  textSize(32);
  fill(0, 102, 153);
  text("unit", 0, 550);
  //Sequence for moving the vector around and creating a n
  //ew unit on clicking on the bottom left rect
  if (key=='0' && friendlies.get(0).isAlive()){
     //myUnit.changeSelected(true);
     //myUnit1.changeSelected(false);
     for(int i=0;i<friendlies.size(); i++){
       if (i==0){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='1' && friendlies.get(1).isAlive()){
      //myUnit.changeSelected(false);
      //myUnit1.changeSelected(true);
      for(int i=0;i<friendlies.size(); i++){
       if (i==1){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='2' && friendlies.get(2).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==2){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='3' && friendlies.get(3).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==3){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='4' && friendlies.get(4).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==4){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='5' && friendlies.get(5).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==5){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='6' && friendlies.get(6).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==6){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='7' && friendlies.get(7).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==7){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='8' && friendlies.get(8).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==8){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (key=='9' && friendlies.get(9).isAlive()){
      for(int i=0;i<friendlies.size(); i++){
       if (i==9){
         friendlies.get(i).changeSelected(true);
       }
       else
         friendlies.get(i).changeSelected(false);
     }
  }
  if (mousePressed){
    
    if((mouseX<=50)&&(mouseY>=550)){
      stroke(0);
      fill(175);
      time = millis();
      timer = true;
      cGold=false;
      
    }
    else if(mouseY<550){
    for(int i = 0; i < friendlies.size(); i++){
     if(friendlies.get(i).isSelected()){
       friendlies.get(i).setmx(mouseX);
       friendlies.get(i).setmy(mouseY);
  
       
       PVector dir = new PVector(friendlies.get(i).getmx() - friendlies.get(i).getX(), friendlies.get(i).getmy() - friendlies.get(i).getY());
       dir.normalize();
       friendlies.get(i).setXSpeed(dir.x * 2);
       friendlies.get(i).setYSpeed(dir.y * 2);
       //friendlies.get(i).setXSpeed((friendlies.get(i).getmx()-friendlies.get(i).getX())/100);
       //friendlies.get(i).setYSpeed((friendlies.get(i).getmy()-friendlies.get(i).getY())/100);
      
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
      if(gold>0){
        
        for(int i=0; i<friendlies.size(); i++){
           if(!friendlies.get(i).isAlive()){
             friendlies.get(i).setAlive(true);
             break;
         }
         //break;
        }
      }
      
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
    if(enemies.get(i).getAlive()){
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
          enemies.get(i).attackfriendly(friendlies.get(j));
          //friendlies.get(j).changeHealth(enemies.get(i).getAttack());
          //enemies.get(i).changeHealth(friendlies.get(j).getAttack());
          friendlies.get(j).attackenemy(enemies.get(i));
          ttime=0;
        }
      }
      //ttime = 0; 
    }
  }
  //print(friendlies.get(0).getHealth());
  
  text("Gold: "+gold, 100, 590);
  
  textSize(14);
  for(int i = 0; i < friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      text("Health "+friendlies.get(i).getHealth(),friendlies.get(i).getX(),friendlies.get(i).getY()+30);
    }
    if(friendlies.get(i).getHealth()<=0){
      friendlies.get(i).setAlive(false);
      friendlies.get(i).setX(900);
      friendlies.get(i).setY(900);
    }
  }
  for(int i = 0; i < enemies.size(); i++){
    if(enemies.get(i).getAlive()){
      text("Health "+enemies.get(i).getHealth(),enemies.get(i).getX(),enemies.get(i).getY()+30);
    }
    if(enemies.get(i).getHealth()<=0){
       enemies.get(i).setAlive(false);
       enemies.get(i).setX(900);
       enemies.get(i).setY(900);
    }
  }
 
 fill(0, 102, 153);
 myCastle.display();
 enemyCastle.display();
 for(int i = 0; i < friendlies.size(); i++){
   if(Math.abs(friendlies.get(i).getX()-enemyCastle.getX()) < 61 && Math.abs(friendlies.get(i).getY()-enemyCastle.getY()) < 61){
     if(ttime == 0){
          ttime = millis();
     }
     
     if((millis()-ttime)>700){
       
       enemyCastle.changeHealth(1);
       ttime = 0;
     }
   }    
 }
 for(int i = 0; i < enemies.size(); i++){
   if(Math.abs(enemies.get(i).getX()-myCastle.getX()) < 61 && Math.abs(enemies.get(i).getY()-myCastle.getY()) < 61){
     if(ttime == 0){
          ttime = millis();
     }
     if((millis()-ttime)>1000){
       myCastle.changeHealth(1);
       ttime = 0;
     }
   }    
 }
 text("Health "+enemyCastle.getHealth(),enemyCastle.getX()-40,enemyCastle.getY()-35);
 text("Health "+myCastle.getHealth(),10,65);
 
 if(ttime == 0){
   ttime = millis();
 }
 if((millis()-ttime)>1000){
   
   opponent.createUnits();
   ttime =0;
 }
 opponent.moveUnits();
 for (int i=0;i<enemies.size();i++){
   
 }
 if(!enemyCastle.getAlive() || !myCastle.getAlive()){
    text("GAME OVER",200,200);
    for(int i = 0; i < 1000; i++){
     
    }
    exit();
  }
}


class enemy{
  int gold;
  void createUnits(){
    if(enemies.size() < 11){
      boolean d = false;
      for(int i = 0; i < enemies.size(); i++){
        if(d==false){
          if(enemies.get(i).getAlive()==false){
            enemies.get(i).setAlive(true);
            d=true;
          
          }
        }
      }
    }
  }
  void moveUnits(){
    Random b = new Random();
    int t = b.nextInt(2);
    Random r = new Random();
    int i = r.nextInt(10);
    print(t);
    if(!enemies.get(i).getM()){
      if(t==0){
      
      
        enemies.get(i).setmx(friendlies.get(i).getX());
        enemies.get(i).setmy(friendlies.get(i).getY());
        enemies.get(i).setSpeedToMouse();
      }
      if(t==1){
        enemies.get(i).setmx(myCastle.getX());
        enemies.get(i).setmy(myCastle.getY()-10);
        enemies.get(i).setSpeedToMouse();
      }
      enemies.get(i).setM(true);
    }
  
  
  }
}

boolean checkCollision(friendlyUnit f, enemyUnit e){
  if(Math.abs(f.getX()-e.getX()) < 31 && Math.abs(f.getY()-e.getY()) < 31){
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
  int attack=-1;
  boolean alive;
  boolean isSelected;
  friendlyUnit(float x,float y,float xs,float ys, boolean a){
    xpos = x;
    ypos = y;
    xs = xspeed;
    ys= yspeed;
    alive = a;
    health=10;
  }
  int getHealth(){
    return health;
  }
  void setX(float x){
    xpos = x;
  }
  void setY(float y){
    ypos = y;
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
  int getAttack(){
    return attack;
  }
  void setAttack(int x){
    attack=x;
  }  
  void attackenemy(enemyUnit e){
    int damage=0;
    ArrayList<friendlyUnit>friendnear = new ArrayList<friendlyUnit>();
    for (int i=0; i< friendlies.size(); i++){
      if (checkCollision(friendlies.get(i),e)){
        friendnear.add(friendlies.get(i));
      }
    }
    for (int j=0; j<friendnear.size();j++){
      damage=damage+friendnear.get(j).getAttack(); 
    }
    e.changeHealth(damage);
  }
  
      
}
class castle{
  int health;
  float xpos;
  float ypos;
  boolean alive;
  
  castle(float x,float y,int h){
    xpos = x;
    ypos = y;
    health = h;
    alive = true;
  }
  float getX(){  
    return xpos;
  }
  float getY(){
    return ypos;
  }  
  void display(){
    if(health >= 0){
      
      rect(xpos,ypos,50,50);
    }  
    else{alive = false;}
  }
  int getHealth(){
    return health;
  }
  void changeHealth(int h){
    health = health - h;
  }
  void setAlive(boolean a){
    alive = a;
  }
  boolean getAlive(){
    return alive;
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
  int attack=-1;
  boolean alive;
  boolean moving;
  enemyUnit(float x,float y,float xs,float ys, boolean a){
    xpos = x;
    ypos = y;
    xs = xspeed;
    ys= yspeed;
    alive = a;
    health=10;
  }
  boolean getM(){
    return moving;
  }
  void setM(boolean m){
    moving = m;
  }
  //void setM(boolean m){
    //movingTo = m;
  //}
  boolean getAlive(){
    return alive;
  }
  void setX(float x){
    xpos = x;
  }
  void setY(float y){
    ypos = y;
  }
  int getHealth(){
    return health;
  }
  void move(){
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
  }
  void setSpeedToMouse(){
    this.setXSpeed((this.getmx()-this.getX())/100);
    this.setYSpeed((this.getmy()-this.getY())/100);
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
  float getmy(){
    return my;
  }
  void setXSpeed(float speed){
    xspeed = speed;
    
  }
  void setYSpeed(float speed2){
    yspeed = speed2;
  }
  void setmx(float positionx){
    mx=positionx;
  }
  void setmy(float positiony){
    my=positiony;
  }
  void setAlive(boolean a){
    alive = a;
  }
  int getAttack(){
    return attack;
  }
  void setAttack(int x){
    attack=x;
  }  
  void attackfriendly(friendlyUnit f){
    int damage=0;
    ArrayList<enemyUnit>enemynear = new ArrayList<enemyUnit>();
    for (int i=0; i< enemies.size(); i++){
      if (checkCollision(f,enemies.get(i))&&enemies.get(i).getAlive()){
        enemynear.add(enemies.get(i));
        line(this.getX(), this.getY(), f.getX(), f.getY());
      }
    }
    for (int j=0; j<enemynear.size();j++){
      damage=damage+enemynear.get(j).getAttack(); 
    }
    
    f.changeHealth(damage);
  
  }
}


