///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 

Player PlayerInstance;

  float xpos;
  float ypos;

class Level1Class{

    Level1Class(float xposL1, float yposL1){
      xpos = xposL1;
      ypos = yposL1;
      PlayerInstance = new Player (xposL1, yposL1);
  }
  
  void update(){
  PlayerInstance.display();
}
  
}
