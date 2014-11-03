Player playerInstance;

void setup() {
  size(800, 800);

  playerInstance = new Player (width/2, height/2);
}


void draw() {

  ///CallPlayer, you need to put this in your class but here for now
  playerInstance.display();

  if (millis() < 15000) {
    ////Call Level1Class
  }

  if (millis() >15000 && < 30000) {
    ////Call Level2Class
  }

  if (millis() >30000 && < 45000) {
    ///Call Level3Class
  }
  
  if (millis() > 45000 && < 60000) {
    ///Call Level4Class
  } else if (millis() > 60000) {
    ///score 
  }
    
}

