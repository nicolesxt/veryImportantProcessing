///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 

//Player PlayerInstance4;
//call the character

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


    String x = "blue";
    String y = "red";
    String z = "yellow";

    String [] s = {
      x, y, z
    };

    int index = int(random(s.length)); 
    fill(0);
    textSize(60);
    if (millis() > 45000 && millis() < 60000) {
      fill(190);
      rect(width/2, height/2 - 10, 300, 150);
      fill(0);
      textAlign(CENTER);
      text(s[index], 400, 400);
      delay(500);
    }
  }
}

void colorButton() {
  fill(190);
  noStroke();
  rectMode(CENTER);
  rect(width/2, height/2 - 190, 300, 150);
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
