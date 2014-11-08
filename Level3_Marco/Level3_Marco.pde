Ball target;

int ammo = 20;
int score = 0;

void setup () {
  smooth () ;
  size (800, 800);
  target = new Ball();
}

void draw () {

  background(0);
  crossHair();
  playerScore ();
  playerAmmo ();
  win();
  lose();

  target.ballUpdate ();
} 

void mousePressed() {
  if (ammo > 0) {
    background (255);
    if (dist(mouseX, mouseY, target.pos.x, target.pos.y)<30) {
      println ("hit");
      background (255, 0, 0);

      textAlign(CENTER, CENTER);
      textSize(100);
      fill(0, 0, 0);
      text("Hit!!!! ", 400, 400);
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
  textSize(40);
  fill(255, 0, 0);
  text("Hit " +score +"/10", 15, 780);
}

void playerAmmo () {

  textAlign(LEFT, CENTER);
  textSize(25);
  fill(255, 0, 0);
  text( "Ammo Left " +ammo, 600, 780);
}

void win () {

  if (score >= 10) {
    println ("YOU WIN!");
    textAlign(CENTER, CENTER);
    textSize(100);
    fill(0, 255, 0);
    text("YOU WIN!!!! ", 400, 400);
  }
}

void lose () {
    if (ammo <= 0 && score <10) {
    println ("YOU LOSE!");
    textAlign(CENTER, CENTER);
    textSize(100);
    fill(255, 0, 0);
    text("YOU LOSE!!!! ", 400, 400);
  }
  
}

class Ball {
  PVector pos = new PVector (0, 0);//position
  PVector vel = new PVector (0, 0);//velocity
  float rad; // radius

  Ball () { //classes need to always have a constructor

    pos.x = random (width-41);
    pos.y = random (height-41);
    vel.x = random (6, 8);
    vel.y = random (5, 6);
    rad = 40;
  }

  void ballUpdate () {
    movement();
    collision();
    render();
  }

  void movement() { //movement
    pos.add(vel);
    /*same as 
     pos.x += vel.x
     pos.y += vel.y
     */
  }

  void collision () { //collision bonderies for the moving target
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

  void render() { //draw the target
    noStroke();
    fill (255, 0, 0, 200);
    ellipse (pos.x, pos.y, rad, rad);
  }
}

