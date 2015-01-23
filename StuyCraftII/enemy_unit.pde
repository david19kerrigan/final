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
