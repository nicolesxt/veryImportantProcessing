//You have to call player in your own LevelXClass
//then call your LevelXClass in the main script


Level1Class Level1;

import ddf.minim.*;
Minim minim;
AudioInput in;


void setup() {
  size(800, 800);
  Level1 = new Level1Class ();
  minim = new Minim(this);
  //minim.debugOn();
  in = minim.getLineIn();
}


void draw() {
  smooth();
  background(255);
    Level1.update();
    Level1.border();
    Level1 = new Level1Class();
}

