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
  }
  
  void instructions() {
  }

  void trueButton() {
  }
  
  void falseButton() {
  }
  
  void colorButton() {
  }
  
  
}  

