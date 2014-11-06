
Player4 PlayerInstance4;

float xpos4;
float ypos4;

//String displayString;
//int displayColor; 

///BottomBar
String [] s = {
  "red", "green", "blue"
};

///TopBar
String [] t1 = {
  "red", "green", "blue"
};

int [] t = {
  #ff0000, #00ff00, #0000ff
};


//MatchColor
//String colorName = s[2];
String displayString = s[2]; 
int displayColor = t[2]; 
//int colorDisplay = t[2];

class Level4Class {

  ColorObject object;


  Level4Class(float xposTemp4, float yposTemp4) {
    xpos4 = xposTemp4;
    ypos4 = yposTemp4;
    PlayerInstance4 = new Player4 (xposTemp4, yposTemp4);

    //object = new ColorObject (colorName, colorDisplay);
    object = new ColorObject (displayString, displayColor);
    //green = new ColorObject (s[1], t[1]);
    //blue = new ColorObject (s[2], t[2]);
  }



  void update() {
    //PlayerInstance4.display();

    cursor(HAND);
    object.update2();
    object.matchColor();
    //green.update();
    //blue.update();
    trueButton();
    falseButton();
    mousePressed();
  }

  void instructions() {
  }

  void trueButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2 - 150, height/2 + 190, 150, 150);
    fill(0);
    textSize(50);
    text("True", width/2 - 150, height/2 + 190);
  }

  void falseButton() {
    fill(190);
    noStroke();
    rectMode(CENTER);
    rect(width/2 + 150, height/2 + 190, 150, 150);
    fill(0);
    textSize(50);
    text("False", width/2 + 150, height/2 + 190);
  }

  void mousePressed() {

    ///false button 
    int false1 = width/2 + 150;
    int false2 = height/2 + 190;
    int false3 = 150;
    int false4 = 150;

    ///true button
    int true1 = width/2 - 150;
    int true2 = height/2 + 190;
    int true3 = 150;
    int true4 = 150;

    ///locating where the true button is 
    if (mouseOverTrue(false1, false2, false3, false4)) 
    { 
      fill(0, 255, 0);
      ellipse(false1, false2, false3, false4);
    } else if (mouseOverTrue(true1, true2, true3, true4)) 
    {
      fill(255, 0, 0);
      ellipse(true1, true2, true3, true4);
    }
  } 

  ///locating location of true button
  boolean mouseOverTrue(int x, int y, int z, float diameter) {
    return (dist(mouseX, mouseY, x, y) < diameter*0.5);
  }
}

class Player4 {

  float xpos;
  float ypos;

  Player4 (float xposTemp, float yposTemp) {
    xpos = xposTemp;
    ypos = yposTemp;
  }

  void display() {
    noStroke();
    fill(255, 0, 0);
    ellipse(xpos, ypos, 25, 25);
  }
}


class ColorObject {

  /*ColorObject (String _colorName, int _colorDisplay) {
   colorName = _colorName;
   colorDisplay = _colorDisplay;
   }*/


  ColorObject (String _displayString, int _displayColor) {
    displayString = _displayString;
    displayColor = _displayColor;
  }

  void update2() {
    bottomBar();
    topBar();
    //useRed();
    //useGreen();
    // useBlue ();
  }


  void bottomBar() {

    fill(190); 
    noStroke(); 
    rectMode(CENTER); 
    rect(width/2, height/2 - 10, 300, 150); 

    int index = int(random(s.length)); 
    fill(0); 
    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 10, 300, 150); 
    fill(0); 
    textAlign(CENTER); 
    delay(500); 
    displayString = s[index];
    text(s[index], 400, 400);
  }


  void topBar() {

    int index2 = int(random(t.length)); 
    int index3 = int(random(t1.length)); 

    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 190, 300, 150); 
    delay(500);
    fill(t[index2]); 
    displayColor = t[index3];
    text(t1[index3], width/2, height/2 - 170);
  }

  void matchColor() {
    //if (colorName.equals(colorDisplay)) {
    if (displayString.equals(displayColor)) {
      //if ((colorName == ("red")) && (colorDisplay == (#ff0000))) {
      fill(0);
      ellipse(400, 400, 50, 50);
    } else {
      fill(255);
      ellipse(400, 400, 50, 50);
    }
  }

  /*void useGreen() {
   if ((colorName == (s[1])) && (colorDisplay == (t[1]))) {
   fill(0);
   ellipse(400, 400, 50, 50);
   } else {
   fill(255);
   ellipse(400, 400, 50, 50);
   }
   }
   
   void useBlue() {
   if ((colorName == (s[2])) && (colorDisplay == (t[2]))) {
   fill(0);
   ellipse(400, 400, 50, 50);
   } else {
   fill(255);
   ellipse(400, 400, 50, 50);
   }
   }*/
