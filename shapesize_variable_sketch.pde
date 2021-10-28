float shapeSize = 225;

void setup() {

  size(800, 800);


}


void draw() {
  
  shapeSize = map(mouseX, 0, 800, 10, 300);
  
  background(183, 91, 261);
  
  fill(237, 94, 184);
  
  ellipse(200, 600, shapeSize, shapeSize);
  ellipse(600, 200, shapeSize, shapeSize);
  rect(500, 300, shapeSize, shapeSize);
  rect(400, 700, shapeSize, shapeSize);
  
  println(shapeSize);


}
