//----------------------------------------------------
// DT Bootcamp 2016, Parsons School of Design.
// Day 2, Example 2, Theme: If Statement - if/else
//----------------------------------------------------


//Declare global variables
int xPos; //x position of circle
int yPos; //y position of circle

//Setup Function
void setup() {
  size(500, 500); //Size of our sketch's window
  xPos = width/2; //Initialize this variable to be half of the width of the window
  yPos = height/2; //Initialize this variable to be half of the height of the window
}

//Draw Function
void draw() {
  background(255); //Set background color to be white
  
  if (mouseX > width/2) { //Check the x position of the mouse.x to see if it's greater than half width of the window
 
    xPos++;  //If the previous statement is true, add 1 to the xPos every frame (circle moves to the right)
  }
  else { //If the previous statement is not true (if the mouse.x is less than width/2), do the following:
    xPos--; //Subtract 1 from xPos every frame (circle moves to the left)
  }

  fill(255, 0, 0); //Sets the fill of the circle to be red
  ellipse(xPos, yPos, 50, 50); //Draw a circle according to the variables
}