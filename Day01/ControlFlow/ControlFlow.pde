// ControlFlow
// Bootcamp 2016 CODE
// Day 01
//
// This sketch that assigns a random shade of grey to the background
// every fifth frame.
//
// (This modifies FirstSketch to add an example of control flow)

int shade; // a variable to store the current shade, with 0 being black and 255 
           // being white

void setup() {
  size(500, 500); // defines the size of the window or canvas in pixels (x,y)
  background(0);  // makes the background 0 (black)
}

void draw() {
  
  // if the variable frameCount modulo 5 is equal to zero, do the stuff in the brackets
  // (frameCount is a variable provided by Processing that automatically stores the 
  //  number of frames that have been rendered.)
  // (modulo is an operator that returns the remainder after dividing the first operand
  //  by the second)
  if (frameCount % 5 == 0) {                  
    shade = (int) random(256); // assigns shade to a random value between 0 and 256 
                               // (non-inclusive of 256)
                               
    background(shade);         // makes the background whatever the current value 
                               // of shade is (defined above)
  }
}