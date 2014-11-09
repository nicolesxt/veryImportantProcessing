ColorObject[] colorList = new ColorObject[3];
ColorObject displayString;
ColorObject displayColor;


void setup() {
  size(600, 600);

  colorList[0] = new ColorObject("red", color(255, 0, 0));
  colorList[1] = new ColorObject("green", color(0, 255, 0));
  colorList[2] = new ColorObject("blue", color(0, 0, 255));


  int random1 = floor(random(0, 3));
  int random2 = floor(random(0, 3));
  displayString = colorList[random1];
  displayColor = colorList[random2];
}

void draw() {

  //print line values:
  //R - 65536
  //G -16711936
  //B - -16776961 

  println(displayString.name + " VS " + displayColor.c);
  if (displayColor == displayString) {
    println("MATCHES");
  } else println("DOESN'T MATCH");

  colorList[0].update();
  colorList[1].update();
  colorList[2].update();
  colorList[0].mousePressed();
  colorList[1].mousePressed();
  colorList[2].mousePressed();
}

class ColorObject {

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
  String displayString = s[2]; 
  int displayColor = t[2]; 

  String name = s[2]; 
  color c = t[2];

  ColorObject(String _name, color _c) {
    name = _name;
    c = _c;
  }

  void update() {
    bottomBar();
    topBar();
    trueButton();
    falseButton();
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
    text(s[index], width/2, height/2 - 10);
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

  void mousePressed () {

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
    if (mouseOverTrue( true1, true2, true3, true4))
    { 
      fill(0, 255, 0);
      ellipse(true1, true2, true3, true4); //
    } else if (mouseOverTrue(false1, false2, false3, false4))  
    {
      fill(255, 0, 0);
      ellipse(false1, false2, false3, false4);
    }
  }

  ///locating location of true button
  boolean mouseOverTrue(int x, int y, int z, float diameter) {
    return (dist(mouseX, mouseY, x, y) < diameter*0.5);
  }
}

