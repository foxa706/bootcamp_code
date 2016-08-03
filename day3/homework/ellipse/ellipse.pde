int r=100;

void setup(){
  size(500,500);
}

void draw(){
  background(255);
  fill(200,100,200);
  
  ellipse(width/2,height/2,r,r);
  float distance=dist(width/2,height/2,mouseX,mouseY);
  
  if(distance<r/2){
    r++;
  }else{
    r--;
  }
  
  if(r<50){
    r=50;
  }
  
  if(r>250){
    r=250;
  }
}