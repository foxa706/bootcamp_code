void setup() {
  size(600, 600);
  background(0);
  fill(255, 0, 0);
  rect(570, 0, 30, 30);
  frameRate(100);
}

int red = 0;
int sig = 0;

void draw() {

  if (mousePressed) {
    if (mouseX>570&&mouseY<30) {
      background(0);
      fill(255, 0, 0);
      rect(570, 0, 30, 30);
    } else {
      if (red==0) {
        sig = 0;
      } else if (red==255) {
        sig = 1;
      }
      if (sig == 0) {
        red++;
      } else {
        red–;
      }
      fill(red, 166, 233);
      noStroke();
      ellipse(mouseX, mouseY, 20, 20);
    }
  }
}