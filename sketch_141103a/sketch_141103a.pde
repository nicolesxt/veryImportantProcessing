//You have to call player in your own LevelXClass
//then call your LevelXClass in the main script


Level1Class Level1;
//Level2Class Level2;
Level3Class Level3;
Level4Class Level4;
EndLevel end;

import ddf.minim.*;
Minim minim;
AudioInput in;

int totalScore = 0;
int time;
int _time;

void setup() {
  size(800, 800);
  //time = seconds;
  Level1 = new Level1Class ();
  Level4 = new Level4Class (mouseX, mouseY);
  Level3 = new Level3Class ();
  //Level2 = new Level2Class ();
  end = new EndLevel();
  
  minim = new Minim(this);
  //minim.debugOn();
  in = minim.getLineIn();
}


void draw() {

  
  println (totalScore);
  smooth();
  background(255);

  if (millis() < 15000) {
    ////Call Level1Class
    Level1.update();
  }else if (millis()< 30000 && millis()>15000) {
    //Level2.update();
  }else if (millis() < 45000 && millis() > 30000) {
    Level3.update();
  }else if (millis() < 60000 && millis()>45000) {
    Level4.update();
  } else if (millis() > 60000){
    end.update();
    end.displayScore();
  }

  println(millis());
  
    time ++;
_time = time/90;

text(_time, 10, 30);
}


void mousePressed() {
  if (millis() < 45000 && millis() > 30000) {
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
}

