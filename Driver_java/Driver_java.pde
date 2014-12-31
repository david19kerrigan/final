//Declaring variables
PShape square;
float x = 100; //unit0's x and y
float y = 100;
float xspeed = 0; //speed of the unit (used for all)
float yspeed = 0;
float posx = 0;
float posy = 0;
PShape unit;
float[] afx = new float[2];

float[] afy = new float[2];

float[] aex = new float[1];

float[] aey = new float[1];

float[] aeh = new float[1];
 
float[] afh = new float[2];

float e1x = 200;
float e1y = 200;
int e1h = 10;
boolean v0=true; //indicates if unit0 alive
boolean v1=false; //indicates if unit1 alive
float v1x=100; //unit1's x and y
float v1y=100;
boolean unit0=true; //indicates if unit0 seleceted to be moved
boolean unit1=false; //indicates if unit1 seleceted to be moved
int time = 0;
int wait = 1000;
boolean timer;
int a;
int gold = 10;
boolean cGold;

//This gets run once at the beginning of the program
void setup() {
  float[] afx = {
    x, v1x
  };
  float[] afy = {
    y, v1y
  };
  float[] aex = {
    e1x
  };
  float[] aey = {
    e1y
  };
  float[] aeh = {
    e1h
  };
  float[] afh = {
    f1h
  };
  
  size(800, 600, P2D);
  rectMode(CENTER);
  stroke(0);
  fill(0);
  rect(25, 25, 50, 50);
  rect(25, 550, 50, 50);
  smooth();
  a = millis();
}

//Run every frame
void draw() {
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);
  background(255);
  stroke(0);
  fill(0);
  rect(25, 25, 50, 50);
  rect(25, 575, 50, 50);
  textSize(32);
  fill(0, 102, 153);
  text("unit", 0, 550);

  //Sequence for moving the vector around and creating a n
  //ew unit on clicking on the bottom left 
  if (key=='0' && v0) {
    unit0=true;
    unit1=false;
  }
  if (key=='1' && v1) {
    unit0=false;
    unit1=true;
  }
  if (mousePressed) {

    if ((mouseX<=50)&&(mouseY>=550)) {
      stroke(0);
      fill(175);
      println("b");
      time = millis();
      timer = true;
      cGold=false;
    } else {
      if (unit0) {
        xspeed = (mouseX-x)/100;
        yspeed = (mouseY-y)/100;
      }
      if (unit1) {
        xspeed = (mouseX-v1x)/100;
        yspeed = (mouseY-v1y)/100;
      }
      posx = mouseX;
      posy = mouseY;
    }
  }
  if (unit0) {
    if ((x>=posx-1 && x<=posx+1) && (y>=posy-1 && y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit1) {
    if ((v1x>=posx-1 && v1x<=posx+1) && (v1y>=posy-1 && v1y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  }
  if ((millis() - time >= wait) && timer==true) {
    println(millis()+" "+time+" "+wait);
    v1 = true;
    if (cGold == false) {
      gold = gold -1;
      cGold = true;
    }
  }
  if (v0) {
    stroke(0);
    fill(175);
    ellipse(x, y, 16, 16);
    if (unit0) {
      x=x+xspeed;
      y=y+yspeed;
    }
  }
  if (v1) {
    stroke(0);
    fill(175);
    ellipse(v1x, v1y, 16, 16);
    if (unit1) {
      v1x=v1x+xspeed;
      v1y=v1y+yspeed;
    }
  }

  println(a);
  text("Gold: "+gold, 100, 590);

  fill(72);
  ellipse(e1x, e1y, 16, 16);

  //fighting routine

  for (int i = 0; i < aex.length; i++) {
    for (int j = 0; j < afx.length; j++) {
      if ((aex[i] <  afx[j] +1)&&(aex[i] > afx[j] - 1)) {
        if ((aey[i] <  afx[j] + 1)&&(aexy[i] > afx[j] - 1)) {
          afh[i]-=1;
          aeh[j]-=1;
        }
      }
    }
  }
}



