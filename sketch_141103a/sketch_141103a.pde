
//You have to call player in your own LevelXClass
//then call your LevelXClass in the main script


Level1Class Level1;
Level2Class Level2;
Level3Class Level3;
Level4Class Level4;

import ddf.minim.*;
Minim minim;
AudioInput in;

void setup() {
  size(800, 800);
  Level1 = new Level1Class ();
  Level4 = new Level4Class (mouseX, mouseY);
  Level3 = new Level3Class ();
  Level2 = new Level2Class ();
  
  minim = new Minim(this);
  //minim.debugOn();
  in = minim.getLineIn();
}


void draw() {
  smooth();
  background(255);
  
  minim = new Minim(this);
  in = minim.getLineIn();

  if (millis() < 15000) {
    ////Call Level1Class
    Level1.update();
    Level1 = new Level1Class();
  }
  //
  if (millis() >15000 && millis() < 30000) {
    Level2.update();
    Level2 = new Level2Class();
  }
  //
  if (millis() >30000 && millis() < 45000) {
    Level3.update();
    Level3 = new Level3Class();
  }

  if (millis() > 45000 && millis() < 60000) {
    Level4 = new Level4Class(mouseX, mouseY);

    Level4.update();
  } else if (millis() > 60000) {
    //  EndLevel
  }

  //println(millis());
}

