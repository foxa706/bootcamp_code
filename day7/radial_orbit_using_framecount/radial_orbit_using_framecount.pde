float r = 0;
//float theta = 0;
PVector position; 

void setup(){
  size (500, 500);
  background(0);
  position = new PVector(0, 0); 
}

void draw(){
  //need a constantly increasing value for sin and cos; sin(angle) is the y 
  //coordinate on the unit circle; cos(angle) is the x coordinate
  //if use both cos and sin functions for position, object will move along an orbit
  //see unit circle gif in presentation if still confused 
  
  position.x = r*cos(frameCount);
  position.y = -r*sin(frameCount);
  
  //uncomment to use theta 
  //position.x = r*cos(theta); 
  //position.y = r*sin(theta); 
  
  fill(0, 255, 255);
  noStroke();
  ellipse(position.x+width/2, position.y+height/2, 1, 1);
  
 // theta += .1;
 
 //radius increases slightly to create a spiral 
  r+= .1;
  
}
