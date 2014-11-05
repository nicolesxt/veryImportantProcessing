Player4 PlayerInstance4;

float xpos4;
float ypos4;


int color1;
int color2;
int color3;


////meaning button
int meaning1; 
int meaning2;
int meaning3;

String f = "red";
String g = "green";
String h = "blue";

String [] s = {
  f, g, h
};


///colorbutton 
String x = "red";
String y = "green";
String z = "blue";

int a = #ff0000; //red
int b = #00ff00; //green 
int c = #0000ff; //blue

String [] t1 = {
  x, y, z
};

int [] t = {
  a, b, c
};


class Level4Class {

  Level4Class(float xposTemp4, float yposTemp4) {
    xpos4 = xposTemp4;
    ypos4 = yposTemp4;
    PlayerInstance4 = new Player4 (xposTemp4, yposTemp4);
  }


  void update() {
    meaning();
    colorButton();
    trueButton();
    falseButton();
    trueORfalse();
  }

  void instructions() {
  }

  void trueButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2 - 150, height/2 + 190, 150, 150);
    fill(0);
    textSize(50);
    text("True", width/2 - 150, height/2 + 190);
  }

  void falseButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2 + 150, height/2 + 190, 150, 150);
    fill(0);
    textSize(50);
    text("False", width/2 + 150, height/2 + 190);
  }

  void mousePressed() {

    ///false button 
    int false1 = width/2 + 150;
    int false2 = height/2 + 190;
    int false3 = 150;
    int false4 = 150;

    ///true button
    int true1 = width/2 - 150;
    int true2 = height/2 + 190;
    int true3 = 150;
    int true4 = 150;

    ///locating where the true button is 
    if (mouseOverTrue(false1, false2, false3, false4)) 
    { 
      fill(0, 255, 0);
      ellipse(false1, false2, false3, false4);
    } else if (mouseOverTrue(true1, true2, true3, true4)) 
    {
      fill(255, 0, 0);
      ellipse(true1, true2, true3, true4);
    }
  } 

  ///locating location of true button
  boolean mouseOverTrue(int x, int y, int z, float diameter) {
    return (dist(mouseX, mouseY, x, y) < diameter*0.5);
  }

  /*
///locating location of false button
   boolean mouseOverFalse(int x1, int y1, int z1, float diameter1) {
   return (dist(mouseX, mouseY, x1, y1) < diameter1*0.5);
   }*/

  void trueORfalse() {

    //turning string into integer so I can compare string and integer 
    //might not need this 
    /* meaning1 = Integer.parseInt(x);
     meaning2 = Integer.parseInt(y);
     meaning3 = Integer.parseInt(z);
     */
    /* for (String
     if (int[0] == trueRed) {
     fill(0); 
     ellipse(400, 400, 50, 50);
     }*/

    /*if (meaning1 && color1 are active)
     if (the true button is hit) {
     ///give one point
     } else if (the false button is hit) {
     ///score stays the same 
     }*/
  } 


  void meaning() {
    fill(190); 
    noStroke(); 
    rectMode(CENTER); 
    rect(width/2, height/2 - 10, 300, 150); 

    int index = int(random(s.length)); 
    fill(0); 
    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 10, 300, 150); 
    fill(0); 
    textAlign(CENTER); 
    delay(500); 
    text(s[index], 400, 400);
  }


  void colorButton() {

    int index = int(random(t1.length)); 
    int index2 = int(random(t.length)); 

    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 190, 300, 150); 
    fill(t[index2]); 
    delay(500); 
    text(t1[index], width/2, height/2 - 170); 
    delay(500);
  }
}



 class Player4 {
 
 float xpos;
 float ypos;
 
 Player4 (float xposTemp, float yposTemp) {
 xpos = xposTemp;
 ypos = yposTemp;
 }
 
 void display() {
 noStroke();
 fill(255, 0, 0);
 ellipse(xpos, ypos, 25, 25);
 }
 }




////IGNORE THIS KEEPING IT IN CASE NEW CODE WONT WORK 
/*///Class Stucture for Everyone to use 
 
 ///Put instructions for how to play your game 
 ///for example put text "Yell to keep water off umbrella"
 ///Put score variable, use if statements within your code to change score variable 
 ///for example, "if user defeats monster you get 25 points"
 ///Insert Ball for character, simple red 
 
 //Player PlayerInstance4;
 //call the character
 //
 
 Player4 PlayerInstance4;
 
 float xpos4;
 float ypos4;
 
 
 class Level4Class {
 
 
 Level4Class(float xposTemp4, float yposTemp4) {
 xpos4 = xposTemp4;
 ypos4 = yposTemp4;
 PlayerInstance4 = new Player4 (xposTemp4, yposTemp4);
 }
 
 void update() {
 PlayerInstance4.display();
 meaning();
 colorButton();
 trueButton();
 falseButton();
 }
 
 void instructions() {
 }
 
 void trueButton() {
 fill(190);
 noStroke();
 rectMode(CENTER);
 rect(width/2 - 150, height/2 + 190, 150, 150);
 fill(0);
 textSize(50);
 text("True", width/2 - 150, height/2 + 190);
 }
 
 void falseButton() {
 fill(190);
 noStroke();
 rectMode(CENTER);
 rect(width/2 + 150, height/2 + 190, 150, 150);
 fill(0);
 textSize(50);
 text("False", width/2 + 150, height/2 + 190);
 }
 
 void meaning() {
 fill(190);
 noStroke();
 rectMode(CENTER);
 rect(width/2, height/2 - 10, 300, 150);
 
 
 String x = "red";
 String y = "green";
 String z = "blue";
 
 String [] s = {
 x, y, z
 };
 
 int index = int(random(s.length)); 
 fill(0);
 textSize(60);
 fill(190);
 rect(width/2, height/2 - 10, 300, 150);
 fill(0);
 textAlign(CENTER);
 text(s[index], 400, 400);
 delay(500);
 }
 }
 
 void colorButton() {
 String x = "red";
 String y = "green";
 String z = "blue";
 
 int a = #ff0000;
 int b = #00ff00;
 int c = #0000ff;
 
 String [] s = {
 x, y, z
 };
 
 int [] t = {
 a, b, c
 };
 
 
 int index = int(random(s.length)); 
 int index2 = int(random(t.length)); 
 
 textSize(60);
 fill(190);
 rect(width/2, height/2 - 190, 300, 150);
 fill(t[index2]);
 delay(500);
 text(s[index], width/2, height/2 - 170);
 delay(500);
 }
 
 
 
 
 class Player4 {
 
 float xpos;
 float ypos;
 
 Player4 (float xposTemp, float yposTemp) {
 xpos = xposTemp;
 ypos = yposTemp;
 }
 
 void display() {
 noStroke();
 fill(255, 0, 0);
 ellipse(xpos, ypos, 25, 25);
 }
 }*/
