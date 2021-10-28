int xPosition = 0;
int direction = 1;

void setup() {
  
  size(800, 800);
  
  background(255, 183, 106);

}

void draw() {
  
  // <, >, ==, !=
  
  if (xPosition < width) {
    //xPosition = xPosition + 1;
    xPosition++;
    
  }
  else {
    xPosition = 0;
  }
  
  //bigger ellipse
  fill(195, 178, 255);
  stroke(111, 255, 153);
  ellipse(xPosition, height/2, xPosition, xPosition);
  
  //smaller ellipse
  fill(250, 240, 164);
  noStroke();
  ellipse(xPosition, height/2, 5, 5);
  
  println(xPosition);


}


 //if... else
  
  
  
