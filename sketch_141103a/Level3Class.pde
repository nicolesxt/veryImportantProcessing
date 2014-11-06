///Class Stucture for Everyone to use 

///Put instructions for how to play your game 
///for example put text "Yell to keep water off umbrella"
///Put score variable, use if statements within your code to change score variable 
///for example, "if user defeats monster you get 25 points"
///Insert Ball for character, simple red 

//Player PlayerInstance3;
//call the character

Ball target;


int ammo = 15;
int score = 0;

class Level3Class {

  Level3Class () {


    Ball target = new Ball ();
    
        background(0);
    crossHair();
    target.movement();
    target.collision();
    target.render();

    playerScore ();
    playerAmmo ();
  
  }
  void update () {

  }

  void mousePressed() {
    if (ammo > 0) {
      background (255);
      if (dist(mouseX, mouseY, target.pos.x, target.pos.y)<30) {
        println ("hit");
        score +=1;
      }
      ammo -=1;
    } else
      ammo =0;
  }

  void crossHair() {
    noCursor();
    noFill();
    strokeWeight(2);
    stroke(0, 255, 0);
    ellipse(mouseX, mouseY, 30, 30);
    line(mouseX-25, mouseY, mouseX+25, mouseY);
    line(mouseX, mouseY-25, mouseX, mouseY+25);
  }

  void playerScore () {

    textAlign(LEFT, CENTER);
    textSize(25);
    fill(255, 0, 0);
    text("Hit " +score +"/10", 15, 780);
  }

  void playerAmmo () {

    textAlign(LEFT, CENTER);
    textSize(25);
    fill(255, 0, 0);
    text( "Ammo Left " +ammo, 600, 780);
  }
}


class Ball {
  PVector pos = new PVector (0, 0);//position
  PVector vel = new PVector (0, 0);//velocity
  float rad; // radius

  Ball () { //classes need to always have a constructor

    pos.x = random (width-20);
    pos.y = random (height-20);
    vel.x = random (6, 8);
    vel.y = random (5, 6);
    rad = 40;
  }

  void movement() { //movement
    pos.add(vel);
    /*same as 
     pos.x += vel.x
     pos.y += vel.y
     */
  }

  void collision () {
    if (pos.x+4 > width - rad *0.5) {
      vel.x *= -1;
    }
    if (pos.x < 1 + rad*0.5) {
      vel.x *= -1;
    }
    if (pos.y > height - rad*0.5) {
      vel.y *= -1;
    }
    if (pos.y < 1 + rad*0.5) {
      vel.y *= -1;
    }
  }

  void render() { //drawing
    noStroke();
    fill (255, 0, 0, 200);
    ellipse (pos.x, pos.y, rad, rad);
  }
}

