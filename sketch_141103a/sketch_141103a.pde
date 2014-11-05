//You have to call player in your own LevelXClass
//then call your LevelXClass in the main script


Level1Class Level1;
//Level2Class Level2;
//Level3Class Level3;
Level4Class Level4;

void setup() {
  size(800, 800);
  Level1 = new Level1Class ();
  Level4 = new Level4Class (mouseX, mouseY);
  //  Level2 = new Level2Class (variableX, variableY);
  //  Level3 = new Level3Class (variableX, variableY);
  
  //sound input
  minim = new Minim(this);
  minim.debugOn();
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
}


void draw() {
  smooth();
  background(255);
  
  if (millis() < 15000) {
    ////Call Level1Class
    Level1.update();
    Level1 = new Level1Class();
  }
  //
  if (millis() >15000 && millis() < 30000) {
    //  Level2.update();
    //  Level2 = new Level2Class(variableX, variableY);
  }
  //
  if (millis() >30000 && millis() < 45000) {
    //  Level3.update();
    //  Level3 = new Level3Class(variableX, variableY);
  }

  if (millis() > 45000 && millis() < 60000) {
    Level4 = new Level4Class(mouseX, mouseY);

    Level4.update();
    Level4.meaning();
    
  } else if (millis() > 60000) {
    //  EndLevel
  }
  
  //println(millis());
}
