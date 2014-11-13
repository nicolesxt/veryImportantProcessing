//Credit to "Chrisir" @ Processing Forum.
// Credit to Antony Marefatk.

enemyBall[] ballList = new enemyBall[100];
Player2 Player2Instance;
int border=0;
int timeSince;
int score;
int time;
int _time;



void setup() {
  frameRate(90);
  size(800, 800);
  
  Player2Instance = new Player2();
//time = seconds;
  for(int a=0; a < ballList.length; a++){
    
    ballList[a] = new enemyBall();
    
  }
  
  timeSince = millis();
}


void draw() {
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


Player2Instance.display();

time ++;
_time = time/90;

text(_time, 10, 30);

println(timeSince);
for(int a=0; a < border; a++){
  
  ballList[a].update();
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
  
  /*if(Player2Instance.yPos2 <= 0){
      //you won
 millis() = 30000;
      totalScore = 1;
    }*/

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
  yVel1 = 1; // Direction
  rad1 = random(50,100); //Size
    
  }
  
  void update(){
  
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
 ySpeed = 1;
 xSpeed = 1;
 }
      void display(){
    
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
  





