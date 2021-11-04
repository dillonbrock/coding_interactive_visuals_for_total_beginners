int a = 0;

float b = -50;

float direction = 0.5;

float lightMod = 0;

void setup() {
  
  size(800, 800, P3D);
  
  background(255, 222, 129);
}


void draw() {
  
  translate(width/2, 0);
  
  lightMod = (lightMod + 1) % 2;
  
  if (lightMod == 1) {
  // Orange point light on the right
  pointLight(150, 100, 0, // Color
             200, -150, 0); // Position

  // Blue directional light from the left
  directionalLight(0, 102, 255, // Color
                   1, 0, 0); // The x-, y-, z-axis direction

  // Yellow spotlight from the front

  spotLight(255, 255, 109, // Color
            0, 40, 200, // Position
            0, -0.5, -0.5, // Direction
            PI / 2, 2); // Angle, concentration
  }
  
  //lights();
  
  
  //we want a variable increasing from 0-360 and back again
  a = (a + 1) % 360; // 'a' increases between 0 and 360
  rotateY(radians(a));
  translate(200, 0);
  
  fill(255, 50);
  
  float mouseStroke = map(mouseX, 0, width, 0, 255);
  
  b = b + direction;
  
  if (b == -200 || b == 300) {
    direction = -direction;
  }
  
  println(b);
 
  
  stroke(mouseStroke, mouseStroke);
  //fill(129, 146, 255);
  for (int i = 0; i < 6; i++) {
    translate(b, 80, 0);
    sphere(50);
    translate(80, 0, 0);
    box(30);
  }
  
  // //Where Are We
  //strokeWeight(12);
  ////x axis is red (positive x direction only)
  //stroke(200, 0, 0);
  //line(0, 0, 500, 0);
  ////y axis is green (positive y direction only)
  //stroke(0, 200, 0);
  //line(0, 0, 0, 500);
  ////z axis is blue (positive z direction only)
  //stroke(0, 0, 200);
  //line(0, 0, 0, 0, 0, 500);
  ////reset stroke weight and stroke color
  //strokeWeight(1);
  //stroke(0);
  
  
  //rotateX(), rotateY(), rotateZ()

}
