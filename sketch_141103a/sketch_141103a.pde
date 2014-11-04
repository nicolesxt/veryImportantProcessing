//You have to call player in your own LevelXClass
//then call your LevelXClass in the main script


Level1Class Level1;
//Level2Class Level2;
//Level3Class Level3;
//Level4Class Level4;


void setup() {
  size(800, 800);
  Level1 = new Level1Class (mouseX, mouseY);
//  Level2 = new Level2Class (variableX, variableY);
//  Level3 = new Level3Class (variableX, variableY);
//  Level4 = new Level4Class (variableX, variableY);
}


void draw() {
  smooth();
  background(255);
  Level1.update();
//  Level2.update();
//  Level3.update();
//  Level4.update();
  Level1 = new Level1Class(mouseX, mouseY);
//  Level2 = new Level2Class(variableX, variableY);
//  Level3 = new Level3Class(variableX, variableY);
//  Level4 = new Level4Class(variableX, variableY);
  ////CallPlayer, you need to put this in your class but here for now
  
  
    if (millis() < 15000) {
    ////Call Level1Class
  }

  if (millis() >15000 && millis() < 30000) {
    ////Call Level2Class
  }

  if (millis() >30000 && millis() < 45000) {
    ///Call Level3Class
  }
  
  if (millis() > 45000 && millis() < 60000) {
    ///Call Level4Class
  } else if (millis() > 60000) {
    ///score 
  }
    
}

