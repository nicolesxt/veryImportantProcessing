
///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 
import ddf.minim.*;

Minim minim;
AudioInput in;



int xPos;
int yPos;
boolean up2;
boolean down2;
boolean left2;
boolean right2;
int xSpeed = 3;
int ySpeed = 3;
int ballSize1 = 25;



//main class
class Level2Class {

  Player2 PlayerInstance2;
  enemyBallz enemyBallzInstance; 

  Level2Class() {
    PlayerInstance2 = new Player2();
    enemyBallzInstance = new enemyBallz();
    xPos = width/2;
    yPos = height-15;
    
  }

  void update() {
    if (up2) yPos -= ySpeed;
    if (down2) yPos += ySpeed;
    if (left2) xPos -= xSpeed;
    if (right2) xPos += xSpeed;
    background(#34465D);
    PlayerInstance2.display();
    
     
    }
  
  
  void display(){
    enemyBallzInstance.display();
    
  
  }
}


class enemyBallz{
  
  PVector ballPos = new PVector(0,0);
PVector ballVel = new PVector(0,3);
float ballSize2 = random(25,45);

  void inst() {
  ballPos.x = random(0,800);
  ballPos.y = -5;
  
  }
  
  void rita() {
    movementLogic();
    fill(random(20),random(20),random(20));
    ellipse(ballPos.x, ballPos.y, ballSize2, ballSize2);
  }
  
  void movementLogic(){
  
   ballPos.x += ballVel.x;
   ballPos.y +=ballVel.y;
}


//the player class
class Player2 {


  void display() {

    noStroke();
    fill(255, 0, 0);
    ellipse(xPos, yPos, ballSize1, ballSize1);

    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          left2 = true;
          right2 = false;
        } 
        if (keyCode == RIGHT) {
          left2 = false;
          right2 = true;
        }
        if (keyCode == UP) {
          down2 = false;
          up2 = true;
        }
        if (keyCode == DOWN) {
          down2 = true;
          up2 = false;
        }
      }
    }
    if (keyPressed == false) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          left2 = false;
          
        } 
        if (keyCode == RIGHT) {

          right2 = false;
          
        }
        if (keyCode == UP) {

          up2 = false;
      
        }
        if (keyCode == DOWN) {
          down2 = false;
          
        }
      }
    }
  }
  }

