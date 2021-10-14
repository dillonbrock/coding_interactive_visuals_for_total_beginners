boolean pressed = false;

void setup() {
  
  size(800, 800, P3D);
  
}


void draw() {
  
  float xAngle = map(mouseX, 0, width, -180, 180);
  float yAngle = map(mouseY, 0, height, -180, 180);
  
  background(0);
  lights();
  noStroke();
  translate(width/2, height/2, 0);
  if (pressed) {
    rotateX(radians(xAngle));
    rotateY(radians(yAngle));
  }
    pushMatrix();
    rotateY(-PI/50);
    rotateX(-PI/50);
      pushMatrix();
      translate(0, 0, -90);
      fill(35, 129, 27);
      drawZAxis();
      popMatrix();
      pushMatrix();
      fill(118, 72, 222);
      rotateX(PI/2);
      drawAxes();
      popMatrix();
      pushMatrix();
      fill(219, 136, 2);
      rotateY(-PI/2);
      drawAxes();
      popMatrix();
    popMatrix();
  
  fill(255);
  textSize(21);
  text("+x", 246, 25);
  text("-x", -246, 25);
  text("+y", -30, 246);
  text("-y", -30, -246);
  text("-z", 25, -22);
  text("+z", -70, 60); 
  text("axes in Processing after \n translating (0, 0) to \n the center of the canvas", 150, -300);
  
  text("*rotated slightly so\nthe z axis is visible", 150, 260);
  

}




void drawAxes() {
  
  int h = 500;
  int lowest = -h/2;
  int r = 3;
  beginShape(TRIANGLE_STRIP);
  for (int i = lowest; i < lowest + h; i++) {
    for (int j = 0; j < TWO_PI; j++) {
      float x = r * cos(j);
      float y = r * sin(j);
      float z = i;
      vertex(x, y, z + 1);
      vertex(x, y, z);
    }
  }
  endShape();
  
    pushMatrix();
    rotateX(PI);
    translate(0, 0, -264);
    drawEnds();
    popMatrix();
    pushMatrix();
    translate(0, 0, -264);
    drawEnds();
    popMatrix();

}

void drawEnds() {
  
  beginShape(TRIANGLE_STRIP);
  int coneLength = 14;
  for (int i = 0; i < coneLength; i++) {
    for (int j = 0; j < TWO_PI; j++) {
      float x = 0.5*i * cos(j);
      float y = 0.5*i * sin(j);
      float z = i;
      vertex(x, y, z);
      vertex((x/z)*(z+1), (y/z)*(z+1), z+1);
    }
  }
  
  endShape();
  
  pushMatrix();
  translate(0, 0, coneLength);
  ellipse(0, 0, coneLength/2, coneLength/2);
  popMatrix();
  
}

void drawZAxis() {
  
  int h = 700;
  int lowest = -h/2;
  int r = 3;
  beginShape(TRIANGLE_STRIP);
  for (int i = lowest; i < lowest + h; i++) {
    for (int j = 0; j < TWO_PI; j++) {
      float x = r * cos(j);
      float y = r * sin(j);
      float z = i;
      vertex(x, y, z + 1);
      vertex(x, y, z);
    }
  }
  endShape();
  
    pushMatrix();
    rotateX(PI);
    translate(0, 0, -h/2 - 14);
    drawEnds();
    popMatrix();
    pushMatrix();
    translate(0, 0, -h/2 - 14);
    drawEnds();
    popMatrix();

}

void mouseClicked() {
  
  if (!pressed) {
    pressed = true;
  }
  else {
    pressed = false;
  }
  

}
