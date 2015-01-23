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
