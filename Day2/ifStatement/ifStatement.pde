//----------------------------------------------------
// DT Bootcamp 2016, Parsons School of Design.
// Day 2, Example 1, Theme: If Statement.
//----------------------------------------------------


//Declare global variables
int xPos; //x position of circle
int yPos; //y position of circle

//Setup Function
void setup() {
  size(800,500); //Size of our sketch's window
  xPos = width/2; //Initialize this variable to be half of the width of the window
  yPos = height/2; //Initialize this variable to be half of the height of the window
}

//Draw Function
void draw() {
  background(255); //Set the background to white
  
  if (mouseX > width/2) {//Check the x position of the mouse.x to see if it's greater than half width of the window
    xPos++; //If the previous statement is true, add 1 to the xPos every frame (circle will move to the right)
  }
  fill(0); //Sets fill color of the circle to be black
  ellipse(xPos,yPos, 50, 50); //Draw a circle according to the variables
}