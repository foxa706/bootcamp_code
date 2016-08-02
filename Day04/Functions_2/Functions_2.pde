//Sketch 2
//this example shows the importance and convenience of code reusability provided by functions


//declare variables
int xValue,yValue;

void setup() {
  size(600, 600);
  background(0);
  
  //initialize  variables
  xValue=0;
  yValue=width/2;
}
 
void draw() {
  fill(0, 10);
  rect(0,0, width, height);
  
  //1.Simple function that draws a circle at the mouse position 
  //drawCircle(mouseX, mouseY, mouseX/4);
  
  //comment out #1
  //2. Creating a pattern of circles 
  if(xValue < width/2){
    movingCircles(xValue);
    xValue++; //increasing size of circles till the center
    
  } else{
    movingCircles(yValue);
    yValue--; //decreasing size of the circles after they reach the center
    
  }
  //boundary conditions to reset the values
  if(yValue==0){
    xValue=0;
    yValue=width/2;
  }
  
}

//function to draw a circle
void drawCircle(int circleX, int circleY, int circleWidth) {
  
  //Map function re-maps range of position to that of color for x and y positions
  float r = map(circleX, 0, width, 0, 255);
  float g = map(circleY, 0, height, 0, 255);
  noStroke();
  fill(r, g, 200);
 
  //draw circle
  ellipse(circleX, circleY, circleWidth, circleWidth);
  
}

//function using the above function
void movingCircles(int x){
  
    //circles travelling from the middle of the edges
    drawCircle(x, height/2, x/8);
    drawCircle(width/2, x, x/8);
    drawCircle(width-x,height/2,x/8);
    drawCircle(width/2,height-x,x/8);
    
    //circles travelling diagonally
    drawCircle(x, x, x/8);
    drawCircle(width-x, height-x, x/8);
    drawCircle(x, width-x, x/8);
    drawCircle(height-x, x, x/8);
    
}