///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 

//Player PlayerInstance2;
//call the character

class Player2 {

  float xpos;
  float ypos;

  Player2 (float xposTemp, float yposTemp) {
    xpos = xposTemp;
    ypos = yposTemp;
  }

  void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(xpos, ypos, 25, 25);
  }
}
