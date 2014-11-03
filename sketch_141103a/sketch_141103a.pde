Boolean a = false;
int nicol3 = 100;
void setup(){
  size(800,800);
  
}


void draw(){
  //klm+nic0 > yMeng = true
  
  background(255);
  fill(random(255),150,0);
  ellipse(width/2,height/2,nicol3,nicol3);
  fill(random(255), random(255), random(255));
  rect(mouseX, mouseY, 20, 20);
}
