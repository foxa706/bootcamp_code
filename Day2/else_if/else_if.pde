//----------------------------------------------------
// DT Bootcamp 2016, Parsons School of Design.
// Day 2, Example 2, Theme: If Statement - if/else/else if
//----------------------------------------------------

//Declare variables
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
  
  fill(0, 255, 0); //Set the fill color to be green.

  if (mouseX > 2*width/3) { //Check to see if the x position of the mouse is greater than two-thirds of the window
    xPos++;  //If the previous statement is true, add 1 to the xPos every frame (circle moves to the right)
  }

  else if (mouseX < width/3) { //If the previous statement is false, check to see if the x position of the mouse is less than one-third of the window
    xPos--;  //Subtract 1 from xPos every frame (circle moves to the left)
  }

  else if (mouseX > width/3 && mouseX < width*2/3) { //If neither of the previous statements are true, check to see if the mouse is in the middle-third of the window
    fill(255, 0, 0); //Change the fill of the circle to be red. Movement stops.
  }
  
  ellipse(xPos, yPos, 50, 50); //Draw a circle according to the variables
}