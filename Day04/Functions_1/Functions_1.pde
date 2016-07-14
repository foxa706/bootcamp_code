//Sketch 2
//This sketch gives an example of a simple function, a function with parameters and a function with a return type

//declare variables
float yPos; // vertical position of the circle
float vel;  //the speed of the circle
float size; //size of the circle

void setup(){
  size(600,600);
  background(0);
  
  //initialize variables
  yPos = 0; 
  vel = 4;
}
 
void draw(){
  //for opacity
  fill(0, 10); 
  rect(0, 0, width, height);
  
  //a simple function 
  moveDrop();
  
  //function with parameters
  makeDrop(width/4, 5);
  makeDrop(3*width/4, 25);
  
  //function with parameters and a return type
  size = calculateSize(mouseX/8, mouseY/8);
  makeDrop(width/2, size+5); //minimum size of the circle is 5, when mouseX wnd mouseY are 0
  
}

//function to move the circle
void moveDrop(){
  
  yPos += vel; //increment yPos
  
  if( yPos < 0 || yPos > height){ //if ball hits the bottom, bounce back
    vel *= -1; //bounce back, velocity is now 4 in the opposite direction
  }
}
 
//function to draw the circle
void makeDrop(float xPos, float size){
  //local variables for color
  int r = (int)xPos;
  int g = (int)yPos;
  
  //boundary conditions for color range
  if(r>255){
    r=100;
  }
  
  if(g>255){
    g=100;
  }
  
  noStroke();
  fill(r,g,227);
  //draw circle
  ellipse(xPos,yPos,size,size);
}


// calculate size of the circle
float calculateSize(float x1, float y1) {
  
  float s = x1+y1;
  return s;
}