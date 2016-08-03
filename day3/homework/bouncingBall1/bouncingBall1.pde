int x;
int y;
int r1=200;
int r2=50;
int xspeed=5;

void setup() {
  size(500, 500);
  x=width/2;
  y=height/2;
}

void draw() {
  background(255);

  fill(255);
  ellipse(width/2, height/2, r1, r1);
  fill(0);
  ellipse(x, y, r2, r2);

  x=x+xspeed;

  if (x > (width/2+(r1/2-r2/2))) {
    xspeed=-5;
  }

  if (x < (width/2-(r1/2-r2/2))) {
    xspeed=5;
  }
}