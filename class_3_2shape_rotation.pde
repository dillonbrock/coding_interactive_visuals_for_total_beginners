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
    
      pushMatrix();
      
      rotateY(radians(a));
      //Where Are We
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
      
      //reset stroke weight and stroke color
      strokeWeight(1);
      stroke(0);
      
      noStroke();
      translate(200, 0, 0);
      sphere(40);

      popMatrix();
    
    
    
    rotateX(radians(a));
    
  //Where Are We
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
    
    noStroke();
    translate(0, 0, 200);
    box(80);
     
}
