void setup() {
  size(500, 500);
}

void draw() {
  noStroke();

  fill(255, 0, 0);
  triangle(500, 500, 500, 0, 0, 500);

  fill(0, 255, 0);
  triangle(0, 0, 500, 0, 0, 500);

  if (mouseX < 500-mouseY) {
    fill(0, 0, 255);
   triangle(0, 0, 500, 0, 0, 500);
  }else{
    fill(100,100,100);
    triangle(500, 500, 500, 0, 0, 500);
  }
}