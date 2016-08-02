//----------------------------------------------------
// DT Bootcamp 2016, Parsons School of Design.
// Day 2, Example 4, Theme: BUTTON
//----------------------------------------------------

boolean button = false;

//declare some global variables

//x and y position of the button
int x,y;

//width and height of the button
int w = 100;
int h = 75;

void setup() {
  size(480, 270); 
  rectMode(CENTER);
  
  //set the value of x to half of the window's width
  x = width/2;
  //set the value of y to half of the window's height
  y = height/2;
}

void draw() {

  // The button is pressed if (mouseX,mouseY) is inside the rectangle and mousePressed is true.
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2 && mousePressed) {
    //set the value of the boolean variable "button" to true
    button = true;
  } else {
    //set the value of the boolean variable "button" to false
    button = false;
  }

  // If the value of the boolean "button" is true 
  if (button) {
    //set the background color to white
    background(255);
    //set the stoke color of the button to black
    stroke(0);
  } else { //if the value of the boolean "button" is not true (is false)
    //set the background color to black
    background(0);
    //set the stoke color of the button to white
    stroke(255);
  }

  //set the fill color of the rectangle to be gray
  fill(175);
  //draw the rectangle based on those parameters
  rect(x, y, w, h);
}