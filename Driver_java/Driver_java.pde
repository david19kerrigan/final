//Declaring variables
PShape square;
float x = 100; //unit0's x and y
float y = 100;
float xspeed = 0; //speed of the unit (used for all)
float yspeed = 0;
float posx = 0;
float posy = 0;
PShape unit;
/*float[] afx = new float[2];

float[] afy = new float[2];

float[] aex = new float[1];

float[] aey = new float[1];

float[] aeh = new float[1];
 
float[] afh = new float[2];

float e1x = 200;
float e1y = 200;*/
int e1h = 10;
int f1h = 10;
boolean v0=true; //indicates if unit0 alive
boolean v1=false; //indicates if unit1 alive
boolean v2=false;
boolean v3=false;
boolean v4=false;
boolean v5=false;
boolean v6=false;
boolean v7=false;
boolean v8=false;
boolean v9=false;
float v1x=100; //unit1's x and y
float v1y=100;
float v2x=100; 
float v2y=100;
float v3x=100; 
float v3y=100;
float v4x=100; 
float v4y=100;
float v5x=100; 
float v5y=100;
float v6x=100; 
float v6y=100;
float v7x=100; 
float v7y=100;
float v8x=100; 
float v8y=100;
float v9x=100; 
float v9y=100;
boolean unit0=true; //indicates if unit0 seleceted to be moved
boolean unit1=false; //indicates if unit1 seleceted to be moved
boolean unit2=false;
boolean unit3=false;
boolean unit4=false;
boolean unit5=false;
boolean unit6=false;
boolean unit7=false;
boolean unit8=false;
boolean unit9=false;
int time = 0;
int wait = 1000;
boolean timer;
int a;
int gold = 10;
boolean cGold;

//This gets run once at the beginning of the program
void setup() {
  /*
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
  };*/
  
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
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='1' && v1) {
    unit0=false;
    unit1=true;
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='2' && v2) {
    unit0=false;
    unit1=false;
    unit2=true;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='3' && v3) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=true;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='4' && v4) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=false;
    unit4=true;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='5' && v5) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=true;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='6' && v6) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=true;
    unit7=false;
    unit8=false;
    unit9=false;
  }
  if (key=='7' && v7) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=true;
    unit8=false;
    unit9=false;
  }
  if (key=='8' && v8) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=true;
    unit9=false;
  }
  if (key=='9' && v9) {
    unit0=false;
    unit1=false;
    unit2=false;
    unit3=false;
    unit4=false;
    unit5=false;
    unit6=false;
    unit7=false;
    unit8=false;
    unit9=true;
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
      if (unit2) {
        xspeed = (mouseX-v2x)/100;
        yspeed = (mouseY-v2y)/100;
      }
      if (unit3) {
        xspeed = (mouseX-v3x)/100;
        yspeed = (mouseY-v3y)/100;
      }
      if (unit4) {
        xspeed = (mouseX-v4x)/100;
        yspeed = (mouseY-v4y)/100;
      }
      if (unit5) {
        xspeed = (mouseX-v5x)/100;
        yspeed = (mouseY-v5y)/100;
      }
      if (unit6) {
        xspeed = (mouseX-v6x)/100;
        yspeed = (mouseY-v6y)/100;
      }
      if (unit7) {
        xspeed = (mouseX-v7x)/100;
        yspeed = (mouseY-v7y)/100;
      }
      if (unit8) {
        xspeed = (mouseX-v8x)/100;
        yspeed = (mouseY-v8y)/100;
      }
      if (unit9) {
        xspeed = (mouseX-v9x)/100;
        yspeed = (mouseY-v9y)/100;
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
  } else if (unit2) {
    if ((v2x>=posx-1 && v2x<=posx+1) && (v2y>=posy-1 && v2y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit3) {
    if ((v3x>=posx-1 && v3x<=posx+1) && (v3y>=posy-1 && v3y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit4) {
    if ((v4x>=posx-1 && v4x<=posx+1) && (v4y>=posy-1 && v4y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit5) {
    if ((v5x>=posx-1 && v5x<=posx+1) && (v5y>=posy-1 && v5y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit6) {
    if ((v6x>=posx-1 && v6x<=posx+1) && (v6y>=posy-1 && v6y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit7) {
    if ((v7x>=posx-1 && v7x<=posx+1) && (v7y>=posy-1 && v7y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit8) {
    if ((v8x>=posx-1 && v8x<=posx+1) && (v8y>=posy-1 && v8y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  } else if (unit9) {
    if ((v9x>=posx-1 && v9x<=posx+1) && (v9y>=posy-1 && v9y<=posy+1)) {
      xspeed = 0;
      yspeed = 0;
    }
  }
  if ((millis() - time >= wait) && timer==true) {
    println(millis()+" "+time+" "+wait);
    if (!v0){
      v0=true;
    }
    else if (!v1){
      v1=true;
    }
    else if (!v2){
      v2=true;
    }
    /*else if (!v3){
      v3=true;
    }
    else if (!v4){
      v4=true;
    }
    else if (!v5){
      v5=true;
    }
    else if (!v6){
      v6=true;
    }
    else if (!v7){
      v7=true;
    }
    else if (!v8){
      v8=true;
    }
    else if (!v9){
      v9=true;
    }*/
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
  if (v2) {
    stroke(0);
    fill(175);
    ellipse(v2x, v2y, 16, 16);
    if (unit2) {
      v2x=v2x+xspeed;
      v2y=v2y+yspeed;
    }
  }
  if (v3) {
    stroke(0);
    fill(175);
    ellipse(v3x, v3y, 16, 16);
    if (unit3) {
      v3x=v3x+xspeed;
      v3y=v3y+yspeed;
    }
  }
  if (v4) {
    stroke(0);
    fill(175);
    ellipse(v4x, v4y, 16, 16);
    if (unit4) {
      v4x=v4x+xspeed;
      v4y=v4y+yspeed;
    }
  }
  if (v5) {
    stroke(0);
    fill(175);
    ellipse(v5x, v5y, 16, 16);
    if (unit5) {
      v5x=v5x+xspeed;
      v5y=v5y+yspeed;
    }
  }
  if (v6) {
    stroke(0);
    fill(175);
    ellipse(v6x, v6y, 16, 16);
    if (unit6) {
      v6x=v6x+xspeed;
      v6y=v6y+yspeed;
    }
  }
  if (v7) {
    stroke(0);
    fill(175);
    ellipse(v7x, v7y, 16, 16);
    if (unit7) {
      v7x=v7x+xspeed;
      v7y=v7y+yspeed;
    }
  }
  if (v8) {
    stroke(0);
    fill(175);
    ellipse(v8x, v8y, 16, 16);
    if (unit8) {
      v8x=v8x+xspeed;
      v8y=v8y+yspeed;
    }
  }
  if (v9) {
    stroke(0);
    fill(175);
    ellipse(v9x, v9y, 16, 16);
    if (unit9) {
      v9x=v9x+xspeed;
      v9y=v9y+yspeed;
    }
  }

  println(a);
  text("Gold: "+gold, 100, 590);

  fill(72);
  //ellipse(e1x, e1y, 16, 16);

  //fighting routine
/*
  for (int i = 0; i < aex.length; i++) {
    for (int j = 0; j < afx.length; j++) {
      if ((aex[i] <  afx[j] +1)&&(aex[i] > afx[j] - 1)) {
        if ((aey[i] <  afx[j] + 1)&&(aex[i] > afx[j] - 1)) {
          afh[i]-=1;
          aeh[j]-=1;
        }
      }
    }
  }*/
}



