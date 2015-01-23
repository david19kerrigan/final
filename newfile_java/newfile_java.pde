//importing random numbers
import java.util.Random;
//Declaring variables

enemy opponent; //the enemy ai
//friendly units
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
//enemy units
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
pickup pickup0;
pickup pickup1;
pickup pickup2;
//castles
castle myCastle;
castle enemyCastle;

//variables for a timer
int time = 0;
int time1 = 0;
int time2 = 0;
int wait = 1000;
int ttime = 0;
int atime = 0;
boolean timer;
//used in changing gold value
boolean cGold;
int a;
int gold = 10;
//araylist of friendly and enemy units and alive friendly units
ArrayList<friendlyUnit> friendlies = new ArrayList<friendlyUnit>();
ArrayList<enemyUnit> enemies = new ArrayList<enemyUnit>();
ArrayList<friendlyUnit> friendlyAlive = new ArrayList<friendlyUnit>();
//sprites
PImage fr;
PImage en;
PImage ca;
PImage back;
PImage health;
PImage bluhealth;
PImage ammo;
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
  pickup0 = new pickup(400,300);
  pickup1 = new pickup(500,200);
  pickup2 = new pickup(200,500);
  myCastle = new castle(0,0,30);
  enemyCastle = new castle(750,525,30);
  myUnit.changeSelected(true);
  rectMode(CENTER);
  myUnit.changeSelected(true);
  stroke(0);
  fill(0);
  
  fr = loadImage("friendly.png");
  en = loadImage("enemy.png");
  ca = loadImage("castle.jpg");
  back = loadImage("back.png");
  health = loadImage("health.png");
  bluhealth= loadImage("bluhealth.png");
  ammo= loadImage("ammo.png");
  smooth();
  a = millis();  

}

//Run every frame
void draw(){
  noStroke();
  fill(255,10);
  
  background(255);
  stroke(0);
  fill(0);
  image(back,0,0);
  
  
  textSize(32);
  fill(0, 0, 0);
  text("unit", 0, 550);
  rect(25,575,50,50);
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
             friendlies.get(i).setHealth(10);
             friendlies.get(i).setX(200);
             friendlies.get(i).setY(200);
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
          if(enemies.get(i).getXSpeed()==0 && enemies.get(i).getYSpeed()==0 && !enemies.get(i).getattackingcastle()){
          enemies.get(i).attackfriendly(friendlies.get(j));}
          //friendlies.get(j).changeHealth(enemies.get(i).getAttack());
          //enemies.get(i).changeHealth(friendlies.get(j).getAttack());
          println(friendlies.get(j).getattackingcastle());
          if(friendlies.get(j).getXSpeed()==0 && friendlies.get(j).getYSpeed()==0 && !friendlies.get(j).getattackingcastle()){
          friendlies.get(j).attackenemy(enemies.get(i));
          }
          ttime=0;
        }
      }
      //ttime = 0; 
    }
  }
  //print(friendlies.get(0).getHealth());
  fill(0,0,0);
  text("Gold: "+gold, 100, 590);
  
  textSize(14);
  for(int i = 0; i < friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      textSize(12);
      fill(7,50,139);
      text("Unit"+i,friendlies.get(i).getX()-10,friendlies.get(i).getY()-10);
      textSize(14);
      text("HP"+friendlies.get(i).getHealth(),friendlies.get(i).getX(),friendlies.get(i).getY()+30);
    }
    if(friendlies.get(i).getHealth()<=0 && friendlies.get(i).isAlive()){
      friendlies.get(i).setAlive(false);
      friendlies.get(i).setX(900);
      friendlies.get(i).setY(900);
    }
  }
  for(int i = 0; i < enemies.size(); i++){
    if(enemies.get(i).getAlive()){
      fill(222,16,40);
      text("HP "+enemies.get(i).getHealth(),enemies.get(i).getX()-10,enemies.get(i).getY()-10);
    }
    if(enemies.get(i).getHealth()<=0 && enemies.get(i).getAlive()){
       enemies.get(i).setAlive(false);
       enemies.get(i).setX(900);
       enemies.get(i).setY(900);
       gold=gold+1;
    }
  }
 
 fill(0, 102, 153);
 myCastle.display();
 enemyCastle.display();
 for(int i = 0; i < friendlies.size(); i++){
   if(Math.abs(friendlies.get(i).getX()-enemyCastle.getX()) < 61 && Math.abs(friendlies.get(i).getY()-enemyCastle.getY()) < 61){
     friendlies.get(i).setattackingcastle(true);
     if(time1 == 0){
          time1 = millis();
     }
     
     if(millis()-time1>700){
       
       friendlies.get(i).attackcastle(enemyCastle);
       
       time1 = 0;
     }
     //friendlies.get(i).setattackingcastle(false);
   }
   else{
  friendlies.get(i).setattackingcastle(false);   
   }
 }
 for(int i = 0; i < enemies.size(); i++){
   if(Math.abs(enemies.get(i).getX()-myCastle.getX()) < 61 && Math.abs(enemies.get(i).getY()-myCastle.getY()) < 61){
     enemies.get(i).setattackingcastle(true);
     if(time2 == 0){
          time2 = millis();
     }
     if((millis()-time2)>1000){
       enemies.get(i).attackcastle(myCastle);
      
       time2 = 0;
     }
     //enemies.get(i).setattackingcastle(false);
   }
    else{
      enemies.get(i).setattackingcastle(false);
    }
 }
 fill(0,0,0);
 text("Health "+enemyCastle.getHealth(),enemyCastle.getX()-40,enemyCastle.getY()-10);
 text("Health "+myCastle.getHealth(),5,95);
 
 if(atime == 0){
   atime = millis();
 }
 if((millis()-atime)>5000){
   
   opponent.createUnits();
   atime =0;
 }
 opponent.moveUnits();
 for (int i=0;i<enemies.size();i++){
   
 }
 if(!enemyCastle.getAlive()){
    textSize(90);
    text("YOU WIN",200,300);
    for(int i = 0; i < 10000; i++){
     
    }
    exit();
  }
 if(!myCastle.getAlive()){
   textSize(90);
   text("YOU LOSE",200,300);
   for(int i = 0; i < 10000; i++){
   }
   exit();
  }
  if(!pickup0.isAlive()){
    Random a = new Random();
    Random b = new Random();
    pickup0.setX(a.nextInt(801));
    pickup0.setY(b.nextInt(550));
    pickup0.setAlive(true);
  }
  if(!pickup1.isAlive()){
    Random a = new Random();
    Random b = new Random();
    pickup1.setX(a.nextInt(801));
    pickup1.setY(b.nextInt(550));
    pickup1.setAlive(true);
  }
  if(!pickup2.isAlive()){
    Random a = new Random();
    Random b = new Random();
    pickup2.setX(a.nextInt(801));
    pickup2.setY(b.nextInt(550));
    pickup2.setAlive(true);
  }
  for(int i = 0; i < friendlies.size(); i++){
    if(checkPickupFriendly(friendlies.get(i),pickup0) && pickup0.isAlive()){
      pickup0.setAlive(false);
      friendlies.get(i).setHealth(friendlies.get(i).getHealth()+5);
    }
  }
  for(int i = 0; i < enemies.size(); i++){
    if(checkPickupEnemy(enemies.get(i),pickup0) && pickup0.isAlive()){
      pickup0.setAlive(false);
      enemies.get(i).setHealth(enemies.get(i).getHealth()+5);
    }
  }
  for(int i = 0; i < friendlies.size(); i++){
    if(checkPickupFriendly(friendlies.get(i),pickup1) && pickup1.isAlive()){
      pickup1.setAlive(false);
      myCastle.changeHealth(5);
    }
  }
  for(int i = 0; i < enemies.size(); i++){
    if(checkPickupEnemy(enemies.get(i),pickup1) && pickup1.isAlive()){
      pickup1.setAlive(false);
      enemyCastle.changeHealth(5);
    }
  }
  for(int i = 0; i < friendlies.size(); i++){
    if(checkPickupFriendly(friendlies.get(i),pickup2) && pickup2.isAlive()){
      pickup2.setAlive(false);
      friendlies.get(i).changeAttack(1);
    }
  }
  for(int i = 0; i < enemies.size(); i++){
    if(checkPickupEnemy(enemies.get(i),pickup2) && pickup2.isAlive()){
      pickup2.setAlive(false);
      enemies.get(i).changeAttack(1);
    }
  }
    

  if(pickup0.isAlive()){
    pickup0.display(health);
  }
  if(pickup1.isAlive()){
    pickup1.display(bluhealth); 
  }
  if(pickup2.isAlive()){
    pickup2.display(ammo); 
  }
}

class pickup{
  boolean alive;
  float xpos;
  float ypos;
  
  pickup(float x, float y){
    xpos = x;
    ypos = y;
    alive = true;
  }
  void display(PImage i){
    image(i,xpos,ypos);
  }
  void setX(float x){
    xpos = x;
  }
  void setY(float y){
    ypos = y;
  }
  float getX(){  
    return xpos;
  }
  float getY(){
    return ypos;
  }  
  void setAlive(boolean a){
    alive = a;
  }
  boolean isAlive(){
    return alive;
  }
}
    

class enemy{
  int gold;
  void setGold(int x){
    gold=gold+x;
  }
  void createUnits(){
    this.gold-=1;
    if(enemies.size() < 11){
      boolean d = false;
      for(int i = 0; i < enemies.size(); i++){
        if(d==false){
          if(enemies.get(i).getAlive()==false){
            enemies.get(i).setAlive(true);
            enemies.get(i).setHealth(10);
            enemies.get(i).setX(900);
            enemies.get(i).setY(900);
            d=true;
          
          }
        }
      }
    }
  }
  void moveUnits(){
    Random b = new Random();
    int t = b.nextInt(2);
    Random r0 = new Random();
    Random r1 = new Random();
    int i = r0.nextInt(10);
    maintainAliveF();
    
    
    if(t==0 && enemies.get(i).getOption()==-1 && friendlyAlive.size()>0){
      int x = r1.nextInt(friendlyAlive.size());
      enemies.get(i).setOption(0);
      enemies.get(i).setTarget(friendlyAlive.get(x)); 
    }
    if(t==1 && enemies.get(i).getOption()==-1){
      enemies.get(i).setOption(1);
    }
    
    if(enemies.get(i).getOption() ==0){
    
   
    
    
    
      enemies.get(i).setmx(enemies.get(i).getTarget().getX());
      enemies.get(i).setmy(enemies.get(i).getTarget().getY());
      enemies.get(i).setSpeedToMouse();
      if(Math.abs(enemies.get(i).getX()-enemies.get(i).getmx())<21 && Math.abs(enemies.get(i).getY()-enemies.get(i).getmy())<21){
        enemies.get(i).setXSpeed(0);
        enemies.get(i).setYSpeed(0);
      }
      if(enemies.get(i).getTarget().getHealth()<=0){
        enemies.get(i).setOption(-1);
        enemies.get(i).setXSpeed(0);
        enemies.get(i).setYSpeed(0);
      }
      
      
    }
    if(enemies.get(i).getOption()==1){
      enemies.get(i).setmx(myCastle.getX()+40);
      enemies.get(i).setmy(30);
      enemies.get(i).setSpeedToMouse();
       if(Math.abs(enemies.get(i).getX()-enemies.get(i).getmx())<21 && Math.abs(enemies.get(i).getY()-enemies.get(i).getmy())<21){
        enemies.get(i).setXSpeed(0);
        enemies.get(i).setYSpeed(0);
        //enemies.get(i).setattackingcastle(true);
      }
    }
    
    //println("x "+enemies.get(i).getmx());
    //println("y "+enemies.get(i).getmy());
  }
  

  
}

int fUnitsAlive(){
  int count = 0;
  for(int i = 0; i< friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      count+=1;
    }
  
  }
  return count;
}
void maintainAliveF(){
  friendlyAlive.clear();
  for(int i = 0; i < friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      friendlyAlive.add(friendlies.get(i));
    }
  }
}

boolean checkCollision(friendlyUnit f, enemyUnit e){
  if(Math.abs(f.getX()-e.getX()) < 21 && Math.abs(f.getY()-e.getY()) < 21){
    return true;
  }
  else{
    return false;
  }
}

boolean checkPickupFriendly(friendlyUnit f, pickup e){
  if(Math.abs(f.getX()-e.getX()) < 21 && Math.abs(f.getY()-e.getY()) < 21){
    return true;
  }
  else{
    return false;
  }
}

boolean checkPickupEnemy(enemyUnit f, pickup e){
  if(Math.abs(f.getX()-e.getX()) < 21 && Math.abs(f.getY()-e.getY()) < 21){
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
  boolean attackingcastle = false;;
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
  void setHealth(int h){
    health = h;
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
    image(fr,xpos,ypos);
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
  void changeAttack(int x){
    attack=attack-x;
  }
  void setAttack(int x){
    attack=x;
  }  
  void attackenemy(enemyUnit e){
    int damage=0;
    ArrayList<friendlyUnit>friendnear = new ArrayList<friendlyUnit>();
    for (int i=0; i< friendlies.size(); i++){
      if ((checkCollision(friendlies.get(i),e))&& friendlies.get(i).isAlive()){
        friendnear.add(friendlies.get(i));
      }
    }
    for (int j=0; j<friendnear.size();j++){
      damage=damage+friendnear.get(j).getAttack(); 
    }
    e.changeHealth(damage);
  }
  void attackcastle(castle e){
    int damage=0;
    ArrayList<friendlyUnit>friendnear = new ArrayList<friendlyUnit>();
    for (int i=0; i< friendlies.size(); i++){
      if(Math.abs(friendlies.get(i).getX()-e.getX()) < 61 && Math.abs(friendlies.get(i).getY()-e.getY()) < 61){
        friendnear.add(friendlies.get(i));
      }
    }
    for (int j=0; j<friendnear.size();j++){
      damage=damage+friendnear.get(j).getAttack(); 
    }
    e.changeHealth(damage);
  }
  boolean getattackingcastle(){
    return attackingcastle;
  }
  void setattackingcastle(boolean x){
    attackingcastle=x;
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
      
      image(ca,xpos,ypos);
    }  
    else{alive = false;}
  }
  int getHealth(){
    return health;
  }
  void changeHealth(int h){
    health = health + h;
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
  friendlyUnit target;
  int health;
  int attack=-1;
  boolean alive;
  boolean moving = false;
  int option = -1;
  boolean attackingcastle=false;
  void setTarget(friendlyUnit f){
    target = f;
  }
  friendlyUnit getTarget(){
    return target;
  }
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
  int getOption(){
    return option;
  }
  void setOption(int o){
    option = o;
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
  void setHealth(int h){
    health = h;
  }
  void move(){
    xpos = xpos + xspeed;
    ypos = ypos + yspeed;
  }
  void setSpeedToMouse(){
   
    PVector di = new PVector(this.getmx() - this.getX(), this.getmy() - this.getY());
    di.normalize();
    this.setXSpeed(di.x * 2);
    this.setYSpeed(di.y * 2);
  }
  void display(){
    image(en,xpos,ypos);
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
  void changeAttack(int x){
    attack=attack-x;
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
  void attackcastle(castle f){
    int damage=0;
    ArrayList<enemyUnit>enemynear = new ArrayList<enemyUnit>();
    for (int i=0; i< enemies.size(); i++){
      if(Math.abs(enemies.get(i).getX()-f.getX()) < 61 && Math.abs(enemies.get(i).getY()-f.getY()) < 61){
        enemynear.add(enemies.get(i));
        line(this.getX(), this.getY(), f.getX(), f.getY());
      }
    }
    for (int j=0; j<enemynear.size();j++){
      damage=damage+enemynear.get(j).getAttack(); 
    }
    
    f.changeHealth(damage);
  
  }
  boolean getattackingcastle(){
    return attackingcastle;
  }
  void setattackingcastle(boolean x){
    attackingcastle=x;
  }
}


