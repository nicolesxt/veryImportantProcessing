// Last level, to display score
PImage photo;
PImage colorStar;
PImage emptyStar;

class EndLevel{
  
  EndLevel(){
  photo = loadImage("img.JPG");
  colorStar = loadImage("colorStar.png");
  emptyStar = loadImage("emptyStar.png");
  }
  
  void update(){
    image(photo, 0, 0, 800, 800);
    //text
    rectMode(CENTER);
    textSize(32);
    fill(255, 0, 0);
    text("Congratulations!!", width/2, height/2+200);
  }
  
  
  
  void displayScore(){
    if (totalScore == 0){
      image(emptyStar, width/2 - 150, height/2, 100, 100);
      image(emptyStar, width/2 - 50, height/2, 100, 100);
      image(emptyStar, width/2 + 50, height/2, 100, 100);
      image(emptyStar, width/2 + 150, height/2, 100, 100);
    }else if (totalScore == 1){
      image(colorStar, width/2 - 150, height/2, 100, 100);
      image(emptyStar, width/2 - 50, height/2, 100, 100);
      image(emptyStar, width/2 + 50, height/2, 100, 100);
      image(emptyStar, width/2 + 150, height/2, 100, 100);
    }else if (totalScore == 2){
      image(colorStar, width/2 - 150, height/2, 100, 100);
      image(colorStar, width/2 - 50, height/2, 100, 100);
      image(emptyStar, width/2 + 50, height/2, 100, 100);
      image(emptyStar, width/2 + 150, height/2, 100, 100);
    }else if (totalScore == 3){
      image(colorStar, width/2 - 150, height/2, 100, 100);
      image(colorStar, width/2 - 50, height/2, 100, 100);
      image(colorStar, width/2 + 50, height/2, 100, 100);
      image(emptyStar, width/2 + 150, height/2, 100, 100);
    }else if (totalScore == 4){
      image(colorStar, width/2 - 150, height/2, 100, 100);
      image(colorStar, width/2 - 50, height/2, 100, 100);
      image(colorStar, width/2 + 50, height/2, 100, 100);
      image(colorStar, width/2 + 150, height/2, 100, 100);
    }
    
  }
  
}
