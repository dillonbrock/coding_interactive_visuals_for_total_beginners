void setup() {
  
  size(800, 800, P3D);
  
}


void draw() {
  
  background(255, 205, 157);
  //moves origin point (0, 0, 0) to the center of the canvas
  translate(width/2, height/2);
  
  
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
            
  noStroke();
  rotateY(radians(100));
  translate(200, 0, 0);
  sphere(40);
}
