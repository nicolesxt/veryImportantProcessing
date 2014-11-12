// Last level, to display score
PImage photo;

class EndLevel{
  EndLevel(){
  photo = loadImage("img.JPG");
  }
  
  void update(){
    textSize(32);
    fill(255, 0, 0);
    text("Congratulations!!", width/2, height/2);
    image(photo, 0, 0);
  }
  
}
