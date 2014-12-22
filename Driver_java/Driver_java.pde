PShape square;
void setup(){
  size(1000,1000,P2D);
  square=createShape(RECT,0,0,50,50);
  square.setFill(color(0,0,0));
  square.setStroke(false);
}
void draw(){
  shape(square,25,25);
}
  
