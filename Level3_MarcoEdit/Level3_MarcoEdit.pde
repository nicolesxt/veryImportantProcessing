Level3Class Level3;

void setup () {
  size (800, 800);
   Level3 = new Level3Class ();
}

void draw () {
   Level3.update();
}

void mousePressed() {
  if (ammo > 0) {
    background (255);
    if (dist(mouseX, mouseY, target.pos.x, target.pos.y)<30) {
      println ("hit");
      background (255, 0, 0);

      textAlign(CENTER, CENTER);
      textSize(100);
      fill(0, 0, 0);
      text("Hit!!!! ", 400, 400);
      score +=1;
    }
    ammo -=1;
  } else
    ammo =0;
}
