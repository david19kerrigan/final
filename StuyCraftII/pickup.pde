//pickup has an xpos and ypos, displays a sprite
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
