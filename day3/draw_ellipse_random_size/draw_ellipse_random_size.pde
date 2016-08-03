void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    fill(mouseX);
    ellipse(mouseX, mouseY, random(50), random(50));
  } else if (mousePressed && mouseButton == RIGHT) {
    clear();
    background(255);
  }
}