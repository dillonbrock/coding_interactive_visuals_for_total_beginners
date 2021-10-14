int zMove = 0;
String zString = str(zMove);
String xPos1 = "x position = 250";
String xPos2 = "x position = 400";
void setup(){
  
  size(800, 800, P3D);
  
}

void draw(){
  
  background(0);
  
  zMove = (zMove + 2) % width;
  println(zMove);
  zString = "z position = + " + str(zMove);
  
    pushMatrix();
    translate(width/2 - 150, height/2, zMove);
    sphere(40);
    translate(50, 0);
    textSize(8);
    text(zString, 0, 0);
    translate(-70, -50, 0);
    text(xPos1, 0, 0);
    popMatrix();
    
    pushMatrix();
    translate(width/2, height/2, zMove);
    sphere(40);
    translate(-30, -50, 0);
    text(xPos2, 0, 0);
    popMatrix();
  
}
