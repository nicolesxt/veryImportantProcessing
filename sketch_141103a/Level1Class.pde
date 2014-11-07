
Player1 PlayerInstance1;

//Boolean GameState1 = true;

      
float xPos1 = 10.0;
float yPos1 = 500.0;
int xVel = 2;
float modifier;
float threshold;
float rectY = 220.0;
float accelY = 0.0;

Boolean displaytext = false;

class Level1Class{
  
    Level1Class(){
    PlayerInstance1 = new Player1 ();
  }
  
void update(){
    background(#34465D);
    PlayerInstance1.display();
    for(int a=0; a<50; a++){
      for(int b=0; b<50; b++){
        modifier = in.right.get((a*64+b)%1023)*64;
        threshold = abs(modifier)*10;
      }
    }
    
    fill(255);
    rectMode(CORNER);
    rectY += accelY;
    rect(50,rectY,700,300);
    //println(threshold);
    displayText();
    
    if(threshold>100){
      accelY = -8;
    }
    else{
      accelY = 4;
      displayText();
      if(rectY > 210){
        accelY = 0;
          if (rectY>190 && (xPos1>50 && xPos1<650)){
            displaytext = true;
          }
       }
    }
    println (rectY);
    fill(255);
    rectMode(CORNER);
    rect(0, yPos1+25/2, width, 5);
    
    
    
//    if ((threshold>100) && (xPos1>60 && xPos1<740)){
//    background(0);
//
//    rectY += 5;
//    xVel = 0;
//    
//    textSize(32);
//    fill(#3565A5);
//    
//    rectMode(CENTER);
//    text("You failed!!", 100, 50);
//    
//      //GameState = false;
//    }else{
//
//
//    }

    if (keyPressed == true){
        if (key == CODED){
           if (keyCode == LEFT){
             xPos1 -= xVel;
         } else if (keyCode == RIGHT){
             xPos1 += xVel;
         }
       }
    }

}
}

void displayText(){
  if (displaytext){
    textSize(32);
    fill(#3565A5);
    rectMode(CENTER);
    text("You just DIED, HAHAHAHA", 100, 50);
  }
  
  if (!displaytext){
    textSize(32);
    fill(#3565A5);
    rectMode(CENTER);
    text("Yell to raise the wall!!! (*O*)", 100, 50);
  }
}

class Player1 {

void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(xPos1, yPos1, 25, 25);
  }
}
