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
  //size of canvas
  size(800,600,P2D);
  //adding new instances
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
  //color
  stroke(0);
  fill(0);
  //loading sprites
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
  //create unit box
  text("unit", 0, 550);
  rect(25,575,50,50);
  //Sequence for moving the vector around and creating a new one
  //new unit on clicking on the bottom left rect
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
  //god mode
  if (key=='g'){
    myCastle.changeHealth(10);
  }
  if (mousePressed){
    //unit box
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
       //moving around with the mouse
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
        //stop at target
        friendlies.get(i).setXSpeed(0);
        friendlies.get(i).setYSpeed(0);
      }
    }
  }
  if ((millis() - time >= wait) && timer==true) {
    
    //lowering gold
    if (cGold == false) {
      gold = gold -1;
      cGold = true;
      if(gold>0){
        //new unit
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
      //move and display each unit
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
  //combat stuff
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
      
    }
  }
  
  fill(0,0,0);
  text("Gold: "+gold, 100, 590);
  //display unit health
  textSize(14);
  for(int i = 0; i < friendlies.size(); i++){
    if(friendlies.get(i).isAlive()){
      textSize(12);
      fill(7,50,139);
      text("Unit"+i,friendlies.get(i).getX()-10,friendlies.get(i).getY()-10);
      textSize(14);
      text("HP"+friendlies.get(i).getHealth(),friendlies.get(i).getX(),friendlies.get(i).getY()+30);
    }//make sure dead units get reset
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
 //attacking castles
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
     
   }
    else{
      enemies.get(i).setattackingcastle(false);
    }
 }
 fill(0,0,0);
 text("Health "+enemyCastle.getHealth(),enemyCastle.getX()-40,enemyCastle.getY()-10);
 text("Health "+myCastle.getHealth(),5,95);
 //the opponent ai moves
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
 //game over stuff
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
  //spawn pickups
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
  
    










