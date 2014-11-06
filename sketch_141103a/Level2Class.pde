///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 

//Player PlayerInstance2;
//call the character

int xPos;
int yPos;
//int xPos2;
//int yPos2;
boolean up, down, left, right;
int xSpeed = 5;
int ySpeed = 5;
int ballSize1 = 25;



//main class
class Level2Class{
    
Player2 PlayerInstance2;

Level2Class(){
      PlayerInstance2 = new Player2();
      xPos = width/2;
      yPos = height-15;
  }
  
void update(){
  background(#34465D);
  PlayerInstance2.display();
  if(up) xPos += xSpeed;
  if(down) xPos -= xSpeed;
  if(left) yPos -= ySpeed;
  if(right) yPos += ySpeed;

  if (keyPressed){
    if (key == CODED){
    if (keyCode == LEFT){
      left = true;
      right = false;
    } 
    if (keyCode == RIGHT){
      left = false;
      right = true;
    }
    if (keyCode == UP){
      down = false;
      up = true;
    }else if (keyCode == DOWN){
      down = true;
      up = false;
      }
    }
  }else{
  if (key == CODED){
    if (keyCode == LEFT){
      left = false;
      
    } 
    if (keyCode == RIGHT){
     
      right = false;
    }
    if (keyCode == UP){
      
      up = false;
    }
    else if (keyCode == DOWN){
      down = false;
      }
    }
  }

}

}




//the player class
class Player2 {
  
//  Player2 (int xPos2, int yPos2) {
//   xPos = xPos2;
//   yPos = yPos2;
//  }
  void display() {
//    xPos=width/2;
//    yPos=height-15;
//  if(up) xPos += xSpeed;
//  if(down) xPos -= xSpeed;
//  if(left) yPos -= ySpeed;
//  if(right) yPos += ySpeed;
    noStroke();
    fill(255, 0, 0);
    ellipse(xPos, yPos, ballSize1, ballSize1);
  }

}
