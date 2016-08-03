//if...shape1
//if...shape2
int counter=0;

void setup(){
  size(500,500);
  background(255);
}

void draw(){
  counter++; //counter=counter+1
  println(counter);
  
  stroke(0);
  strokeWeight(5);
  if(counter<100){
    background(255);
  ellipse(width/2,height/2,100,100);
  }else if(counter>=100 && counter<200){
    background(255);
  line(width/2-50,height/2,width/2+50,height/2);
  }else if(counter>200){
    counter=0;
  }
}