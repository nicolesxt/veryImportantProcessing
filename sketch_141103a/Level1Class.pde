
Player1 PlayerInstance1;

//Boolean GameState1 = true;

      
float xPos1 = 10.0;
float yPos1 = 500.0;
float ballSizeX = 25.0;
float ballSizeY = 25.0;
int xVel = 2;
float modifier;
float threshold;
float rectY = 220.0;
float accelY = 0.0;

Boolean displaytext = false;

String a = "Yell to raise the wall!!! (*O*)";
String b = "You just DIED, HAHAHAHA";
String c = "You Won, YESS!";

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
    
    
    textSize(32);
    fill(255,0,0);
    rectMode(CENTER);
    text(a, 100, 50);
    if(threshold>100){
      accelY = -8;
    }
    else{
      accelY = 4;
      if(rectY > 210){
        accelY = 0;
          if (rectY>190 && (xPos1>50 && xPos1<650)){
            a = b;
            ballSizeY = 4;
            yPos1 = 510;
            xVel = 0;
          }
       }
    }
    
    
    
    if(xPos1 >= 775){
      //you won
      a = c;
      totalScore = 1;
    }
    
    println (rectY);
    fill(255);
    rectMode(CORNER);
    rect(0, 500+25/2, width, 5);
    


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

void border(){
  if (xPos1<15){
    xPos1 ++;
  }
  
  if (xPos1>775){
    xPos1 --;
  }
  
}


}



class Player1 {

void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(xPos1, yPos1, ballSizeX, ballSizeY);
  }
}
