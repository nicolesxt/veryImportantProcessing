///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 

//Player PlayerInstance4;
//call the character

Player PlayerInstance4;

float xpos4;
float ypos4;


class Level4Class {

  Level4Class(float xposTemp4, float yposTemp4) {
    xpos4 = xposTemp4;
    ypos4 = yposTemp4;
    PlayerInstance4 = new Player (xposTemp4, yposTemp4);
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
    text("True", width/2 - 210, height/2 + 200);
  }

  void falseButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2 + 150, height/2 + 190, 150, 150);
    fill(0);
    textSize(50);
    text("False", width/2 + 90, height/2 + 200);
  }

  void meaning() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2, height/2 - 10, 300, 150);
  }

  void colorButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2, height/2 - 190, 300, 150);
  }
}  

