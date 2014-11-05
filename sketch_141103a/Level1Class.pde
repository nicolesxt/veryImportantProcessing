///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 
import ddf.minim.*;

Minim minim;
AudioInput in;

Player1 PlayerInstance1;

//Boolean GameState1 = true;

      
float xposL1 = 10.0;
float yposL1 = 500.0;
//float sum = 0.0;
float xPos = xposL1;
float yPos = yposL1;

class Level1Class{
  
    Level1Class(){
//    float xPos = xposL1;
//    float yPos = yposL1;
//    float rectY;
//    float sum = 0.0;
//    rectY = height - sum;
//    rectMode(CENTER);
//    rect(width/2,0,700,rectY);
      PlayerInstance1 = new Player1 (xposL1, yposL1);
  }
void update(){
    background(#34465D);

    float sum = 0.0;
    for(int i = 0; i < in.bufferSize(); i++){
       sum+=abs(in.left.get(i))*20;
      }
    println(sum);
    
    PlayerInstance1.display();
    
    float rectY = height - sum + 27;
    if (yPos < rectY && (xPos>50 && xPos<750)){
      background(0);
      print("something");
      //GameState = false;
    }
    
    fill(255);
    rectMode(CENTER);
    rect(width/2,100,700,rectY);
    rectMode(CORNER);
    rect(0, yPos+25/2, width, height-yPos);
    //display text
    textSize(32);
    fill(#3565A5);
    rectMode(CENTER);
    text("Yell to raise the wall!!! (*O*)", 100, 50);

}
}


class Player1 {
  float xpos;
  float ypos;
  Player1 (float xposTemp, float yposTemp) {
    xpos = xposTemp;
    ypos = yposTemp;
  }
  void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(xpos, ypos, 25, 25);
  }
}


void keyPressed(){
  if (key == CODED){
    if (keyCode == LEFT){
      xposL1 -= 20;
    } else if (keyCode == RIGHT){
      xposL1 += 20;
    }
  }
  
  }

