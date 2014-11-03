Boolean a = false;
void setup(){
  size(200,200);
  
}


void draw(){
  background(255);
  fill(255,150,0);
  ellipse(50,50,10,10);
  fill(random(255), random(255), random(255));
  rect(mouseX, mouseY, 20, 20);
}
