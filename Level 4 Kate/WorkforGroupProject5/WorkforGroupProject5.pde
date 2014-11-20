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

  colorList[0].update();
  colorList[1].update();
  colorList[2].update();
  colorList[0].trueORfalse();
  colorList[1].trueORfalse();
  colorList[2].trueORfalse();

  for (int i = 0; i < 10; i++) {
    println(displayString.name + " VS " + displayColor.c);
    if (displayString == displayColor) {
      println("MATCHES");
    } else println("DOESN'T MATCH");
  }
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
    trueORfalse();
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
    displayString = s[index];
    text(s[index], width/2, height/2 - 10);
  }


  void topBar() { 
    int index2 = int(random(t.length)); 
    int index3 = int(random(t1.length));

    textSize(60); 
    fill(190); 
    rect(width/2, height/2 - 190, 300, 150); 
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

  void trueORfalse () {

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
    if (mousePressed && mouseOver( true1, true2, true3, true4))
    { 
      fill(255);
      rect(true1, true2, true3, true4); //
    } else if (mousePressed && mouseOver(false1, false2, false3, false4))  
    {
      fill(255);
      rect(false1, false2, false3, false4);
    }
  }

  ///locating location of true button
  boolean mouseOver(int x, int y, int z, float diameter) {
    return (dist(mouseX, mouseY, x, y) < diameter*0.5);
  }
}

