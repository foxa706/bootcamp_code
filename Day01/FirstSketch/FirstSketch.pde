// FirstSketch
// Bootcamp 2016 CODE
// Day 01
//
// This sketch assigns a random shade of grey to the background on each frame

int shade; // a variable to store the current shade, with 0 being black and 255  //<>//
           // being white

void setup() { //<>//
  size(500, 500); // defines the size of the window or canvas in pixels (x,y) //<>//
  background(0);  // makes the background 0 (black) //<>//
  println("setup completed");
} //<>//

void draw() { //<>//
  shade = (int) random(256); // assigns shade to a random value between 0 and 256  //<>//
                             // (non-inclusive of 256)
  println("current shade: " + shade);
                             
  background(shade); // makes the background whatever the current value of shade //<>//
                     // is (defined above)
} //<>//