void setup() {
  
  size(800, 800, P3D);

}

void draw() {
  
  strokeWeight(12);
  //x axis is red (positive x direction only)
  stroke(200, 0, 0);
  line(0, 0, 500, 0);
  //y axis is green (positive y direction only)
  stroke(0, 200, 0);
  line(0, 0, 0, 500);
  //z axis is blue (positive z direction only)
  stroke(0, 0, 200);
  line(0, 0, 0, 0, 0, 500);

}
