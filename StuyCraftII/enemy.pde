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
  
