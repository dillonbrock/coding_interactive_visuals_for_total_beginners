int a = 0;

void setup(){
  size(800, 800, P3D);
}

void draw(){
  background(255, 205, 157);
  translate(width/2, height/2);
  
    //lights
      // Orange point light from left
      pointLight(150, 100, 0,     // Color
                 -200, -150, 0); // Position
                  
      // Blue directional light from right
      directionalLight(0, 102, 255,  //Color
                      -1, 0, 0);     // the x-, y-, and z-axis direction
                      
      // Yellow spotlight from front
      spotLight(255, 255, 100,  // Color
                0, 40, 200,     // Position
                0, -0.5, -0.5,  // Direction
                PI / 2, 2);     // Angle, concentration
                
  noStroke();
  //fill(157, 225, 255);
  
  a = (a + 1) % 360;
  rotateY(radians(a));
  translate(200, 0, 0);
  sphere(40);
                  
}
