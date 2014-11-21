//Credit to "Chrisir" @ Processing Forum.
// Credit to Antony Marefat.
class Level2Class{
enemyBall[] ballList = new enemyBall[100];
Player2 Player2Instance;
int border;
int timeSince;
int score;
Level2Class(){
border=0;
frameRate(90);
Player2Instance = new Player2();
timeSince = millis();
  

  for(int a=0; a < ballList.length; a++){
    
    ballList[a] = new enemyBall();
    
  }
}


void display() {
  noFill();
beginShape();
vertex(350, 350);
vertex(400, 300);
vertex(450, 350);
endShape();
noFill();
beginShape();
vertex(400, 300);
vertex(400, 600);
endShape();
noStroke();
  smooth();
fill(255,255,255,20);
rect(0,0,height,width);

//background(255);


Player2Instance.display2();



println(timeSince);
for(int a=0; a < border; a++){
  
  ballList[a].update2();
  ballList[a].move(); 
  //restarts position if collision
  float distance = dist(ballList[a].xPos1,ballList[a].yPos1,Player2Instance.xPos2,Player2Instance.yPos2);
        if(distance<=(ballList[a].rad1+Player2Instance.rad2)/2+1)
        {
Player2Instance.xPos2 = width/2;
Player2Instance.yPos2 = height-15;
        }
  }
  
  if (millis() - timeSince >=500){ //Spawn balls delay
   timeSince = millis();
  border++;
 if (border>ballList.length)
border=ballList.length; 
    
  }
  
  if(Player2Instance.yPos2 <= 5){
      //you won

      totalScore2 = 1;
      
      println (totalScore);
      println ("WHOOP WHOOP");
       textAlign(CENTER, CENTER);
      textSize(100);
      fill(0, 255, 0);
      text("WHOOP WHOOP ", 400, 400);
    
    }

}


class enemyBall{ // Attacking balls
  float xPos1;
  float yPos1;
  float rad1;
  float xVel1;
  float yVel1;
  
  //Construction
  enemyBall(){
  xPos1= random(width); //Starting Point x
  yPos1 = 1; // Starting Point y
  xVel1= 0; //Direction
  yVel1 = 2; // Direction
  rad1 = random(50,100); //Size
    
  }
  
  void update2(){
  
  stroke(0);
  noFill(); //Color
  ellipse(xPos1, yPos1, rad1, rad1);
  stroke(255,0,0); 

  }
  
  void move(){ //Movement
    xPos1+=xVel1;
    yPos1+=yVel1;
    
  }
}

class Player2{
float xPos2;
float yPos2;
float rad2;
float ySpeed;
float xSpeed;
boolean up;
boolean down;
boolean left;
boolean right;
  
  
 Player2(){ //Construction
 xPos2 = width/2;
 yPos2 = height-15;
 rad2 = 25;
 ySpeed = 3;
 xSpeed = 3;
 }
      void display2(){
    
    noStroke();
    fill(255,0,0);
    ellipse(xPos2, yPos2, rad2+random(-3,8), rad2+random(-3,8));
    
    movementLogic();
    collisionLogic();
   }
   
   void movementLogic(){
    if (up) yPos2 -= ySpeed;
    if (down) yPos2 += ySpeed;
    if (left) xPos2 -= xSpeed;
    if (right) xPos2 += xSpeed;
    
    if (keyPressed == true) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          left = true;
          right = false;
        } 
        if (keyCode == RIGHT) {
          left = false;
          right = true;
        }
        if (keyCode == UP) {
          down = false;
          up = true;
        }
        if (keyCode == DOWN) {
          down = true;
          up = false;
        }
      }
    }
    if (keyPressed == false) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          left = false;
          
        } 
        if (keyCode == RIGHT) {

          right = false;
          
        }
        if (keyCode == UP) {

          up = false;
      
        }
        if (keyCode == DOWN) {
          down = false;
          
        }
      }
    }
     
   }
   
   void collisionLogic() {
  
   // walls

  if (xPos2 + rad2 >= width) {
 xPos2 = width/2;
 yPos2 = height-15;
  }
 
  if (xPos2 - rad2 <= width-width) {
 xPos2 = width/2;
 yPos2 = height-15;
  }
}
  
 } 
  

}
