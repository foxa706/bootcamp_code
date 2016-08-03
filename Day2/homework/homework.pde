void setup(){
size(200,200);
background(255);
frameRate(10);
}

void draw(){
ellipse(100,100,100,100);
fill(250,128,10);

line(100,50,100,150);

noFill();
stroke(0, 0, 0);
bezier(50, 100, 75, 120, 125, 120, 150,100);

noFill();
stroke(0, 0, 0);
bezier(90, 50, 60, 75, 60, 125, 90, 150);

noFill();
stroke(0, 0, 0);
bezier(110, 50, 140, 75, 140, 125, 110, 150);
ellipse(100,100,100,100);
fill(250,128,10);
}