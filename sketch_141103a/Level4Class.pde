float xpos4;
float ypos4; 

///BottomBar
String [] s = {
  "red", "green", "blue"
};

///TopBar
String [] t1 = {
  "red", "green", "blue"
};

int [] t = {
  #ff0000, #00ff00, #0000ff
};


//MatchColor
//String colorName = s[2];
String displayString = s[2]; 
int displayColor = t[2]; 
//int colorDisplay = t[2];


int overallScore = 0;


class Level4Class {


  int trueBoxX = 250;
  int trueBoxY = 590;
  int trueBoxW = 150;
  int trueBoxH = 150;

  int falseBoxX = 550;
  int falseBoxY = 590;
  int falseBoxW = 150;
  int falseBoxH = 150;

  boolean trueState = false;
  boolean falseState = false;

  long lastTime = millis();

  int index;
  int index2;
  int index3;

  int gameState = 0;
  //ColorObject object;


  Level4Class(float xposTemp4, float yposTemp4) {
    
    xpos4 = xposTemp4;
    ypos4 = yposTemp4;

    //object = new ColorObject (colorName, colorDisplay);
    ///////object = new ColorObject (displayString, displayColor);
    //green = new ColorObject (s[1], t[1]);
    //blue = new ColorObject (s[2], t[2]);
  }



  void update() {

    cursor(HAND);
    /////object.update2();
    trueButton();
    falseButton();
    mousePressed();
    buttons();
    score ();

    if (millis() - lastTime > 3000) {
      println("3 second have PASSED");
      lastTime = millis();
    }
  } 


  void trueButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(trueBoxX, trueBoxY, trueBoxW, trueBoxH);
    fill(0);
    textSize(50);
    text("True", trueBoxX, trueBoxY);
  }

  void falseButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(falseBoxX, falseBoxY, falseBoxW, falseBoxH);
    fill(0);
    textSize(50);
    text("False", falseBoxX, falseBoxY);
  }

  void mousePressed() {

    ///locating where the true button is 
    if (mouseOverFalse(falseBoxX, falseBoxY, falseBoxW, falseBoxH)) { 
      fill(0, 255, 0);
      ellipse(falseBoxX, falseBoxY, falseBoxW, falseBoxH);
      falseState = true;
      println("false sttate" + falseState);
    } else if (mouseOverTrue(trueBoxX, trueBoxY, trueBoxW, trueBoxH)) {
      fill(255, 0, 0);
      ellipse(trueBoxX, trueBoxY, trueBoxW, trueBoxH);
      trueState = true;
      println("true state" + trueState);
    } else {
      falseState = false;
      trueState = false;
      //println(falseState);
    }
  }


  ///locating location of true button
  boolean mouseOverTrue(int x, int y, int z, float diameter) {
    return (dist(mouseX, mouseY, x, y) < diameter*0.5);
  }


  boolean mouseOverFalse(int x, int y, int z, float diameter) {
    return (dist(mouseX, mouseY, x, y) < diameter*0.5);
  }



  void buttons () {

    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 190, 300, 150); 

    fill(t[index2]); 
    displayColor = t[index3];
    text(t1[index3], width/2, height/2 - 170);

    fill(190); 
    noStroke(); 
    rectMode(CENTER); 
    rect(width/2, height/2 - 10, 300, 150); 



    fill(0); 
    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 10, 300, 150); 
    fill(0); 
    textAlign(CENTER); 

    displayString = s[index];
    text(s[index], 400, 400);

    if (gameState == 0) {

      index2 = int(random(t.length)); 
      index3 = int(random(t1.length));
      index = int(random(s.length)); 




      gameState++;
    }



    if (gameState == 1) {

      if (mousePressed == true) {
        if (s[index].equals(t1[index3]) == false && falseState == true) {
          overallScore++;
          gameState--;
        } else if (s[index].equals(t1[index3]) == true && falseState == true) {
          overallScore--;
          gameState--;
        } else if (s[index].equals(t1[index3]) == false && trueState == true) {
          overallScore++;
          gameState--;
        } else if (s[index].equals(t1[index3]) == true && trueState == true) {
          overallScore--;
          gameState--;
        }
      }
    }
  }
  void score () {
    textSize(40);
    fill(255, 0, 0);
    text(overallScore, 15, 700);
  }
}

