float helper = 0;
float helper2 = 0;
float helpangle1 = 0;
float helpangle2 = 0;

float helpsize = 0;

int triangleOffset = 4;
int spiral = 800;

int shift = 0;
float shiftangle = 0;

PFont ourfont;



int coneLength = 300;


void setup() {
  
  size(800, 800, P3D);
  
  smooth(16);

  ourfont = createFont("FiraSansExtraCondensed-Light.ttf", 128);
}


void draw() {

  background(85, 66, 47);
  
   shift = (shift + 4) % 3360;
   shiftangle = (shiftangle + 0.02) % 360;
  
        
  //fontstuff
  
  
  //helper
    helper = map(mouseX, 0, 800, 0, 255);
    //println(helpangle1, helper2);
    println(helper);
    helper2 = map(mouseY, 0, 800, 500, 3000);
    
    helpangle1 = map(mouseX, 0, 800, 0, 360);
    //println(helpangle1, helpangle2);
    
    helpangle2 = map(mouseY, 0, 800, 0, 360);
    
    //helpsize = map(mouseX, 0, 800, 0, 360);
    //println(helpsize);
    
  
  //lights
    pushMatrix();
    
    lightSpecular(128, 128, 128);
               
    spotLight(255, 138, 70, 
              1500, 2380, -2380, 
              0, -1, 1, radians(180), 0);
    spotLight(255, 126, 242, 
              3500, 4200, -4700, 
              0, 0, 1, PI/4, 0);
              
    popMatrix();
  
  
  camera(485.0, 3985.0, -3030.0, // eyeX, eyeY, eyeZ
         0.0, 0.0, 0.0, // centerX, centerY, centerZ
         0.0, 1.0, 0.0); // upX, upY, upZ
         
  //sphere
    pushMatrix();
    translate(width/2 + 800, height/2, -1200);
    noStroke();
    fill(255, 200);
    specular(242, 159, 76);
    shininess(2.0);
    sphere(800);
    
      //text
      pushMatrix();
      translate(0, 0, -900);
      rotateX(radians(20));
      //rotateZ(radians(150));
      rotateY(radians(180));
      translate(-175, 630, 0);
      
      //specular(21, 57, 39);
      //shininess(2.0);
      
      for (int i = 0; i < 6; i +=2) {
      
      translate(0, 0, 0 + i);
      textMode(SHAPE);
      textFont(ourfont);
      textSize(128);
      textLeading(200);
      //fill(21, 57, 39);
      fill(0);
      text("coding\ninteractive\nvisuals\nfor total\nbeginners", 0, 0); 
      }
      
      popMatrix();
      
    popMatrix();
    
    pushMatrix();
    translate(-width/2 + 250, height/2 + 550, 0);
   
    
    //description
       pushMatrix();


        rotateY(radians(150 + 353.7));
        rotateX(radians(5 + 343.35));
        rotateY(radians(30));
        rotateX(radians(-30));
        rotateY(radians(-10));
        rotateZ(radians(-10));
        
        
      //specular(124, 122, 56);
      //shininess(2.0);
      
      textMode(SHAPE);
      textFont(ourfont);
      textSize(147);
      textLeading(195);
        pushMatrix();
        for (int i = 0; i < 6; i +=1) {
          
        translate(0, 0, 0 + i);
        
        fill(124, 122, 56);
        //fill(0);
        //fill(255, 138, 70);
        text("An online workshop using\nProcessing free software\n10/20 - 11/12\nlecture wednesdays 6-8:30 pm pst\nopen lab fridays 6-8 pm\nfinal presentations 8 pm nov 12\n$80- to 240+ sliding scale\npresented by whateverSpace", 0, 0); 
        }
        popMatrix();
        pushMatrix();
        ////where are we
        //pushMatrix();
        //strokeWeight(20);
        
        ////x axis
        //stroke(200, 0, 0);
        //line(0, 0, 0, 5000, 0, 0);
        
        ////y axis
        //stroke(0, 200, 0);
        //line(0, 0, 0, 0, 5000, 0);
        
        ////z axis
        // stroke(0, 0, 200);
        //line(0, 0, 0, 0, 0, 5000);
    
        //popMatrix();
        translate(0, 1525.0, 0);
        rotateZ(radians(4.5));
        textSize(100);
        fill(107, 30, 56);
        text("taught by\nHelen Spencer-Wallace and Dillon Brock", 0, 0);
        popMatrix();
    
      
      popMatrix();

    popMatrix();
    
    
    
  
  //spirals
    pushMatrix();
     translate(width/2, height/2);
     
      //purple
      pushMatrix();
      rotateX(radians(shiftangle + 30));
      rotateY(radians(shiftangle + 195));
      drawRect(20, 174, 167, 255);
      popMatrix();
      
      //vertical-ish light blue one
      pushMatrix();
      rotateX(radians(shiftangle + 235));
      rotateZ(radians(shiftangle + 90));
      drawRect(20, 51, 191, 225);
      popMatrix(); 
      
      //dark blue
      pushMatrix();
      rotateY(radians(shiftangle + 90));
      rotateX(radians(shiftangle + 120));
      rotateY(radians(120));
      rotateX(radians(200));
      rotateZ(radians(75));
      drawRect(10, 57, 63, 215);
      popMatrix();
      
      //big light blue
      pushMatrix();
      rotateX(radians(shiftangle + 193));
      rotateZ(radians(shiftangle + 246));
      rotateY(radians(shiftangle + 292));
      drawRect(40, 101, 163, 216);
      popMatrix();
      
      //coral lazers
      pushMatrix();
      translate(00, -400, 00);
      
      for (int i = 0; i < 360; i += 10) {
        //rotateX(radians(250-i));
        //rotateY(radians(i));
        
         rotateX(radians(273 - i));
        //rotateY(radians(helpangle2 + i));
        rotateZ(radians(136 + i));
        
      
        
        for (var x = -8000; x<8000; x+=100) {
        
        stroke(map(x, -8000, 8000, 0, 240), map(x, -8000, 8000, 0, 155), 120, map(x, -8000, 8000, 0, 90));
        strokeWeight(1);
        line(x+shift, -10000, 0,     400, 300, 0);
        line(x+shift, 10000, 0,     400, 300, 0);
        }
      }
    
      popMatrix();
      
    popMatrix();
  

}

// function to draw a rectangle
//void drawRect(int size, int r, int g, int b){
//  noFill();
//beginShape();

//for (int i = 0; i < 100; i = i+1) {
//  strokeWeight(i * 0.5);
//  stroke(r, g, b, 255 - (i * 3));
//  int x =  ( (i+3)/4) * ((i + 1)  / 2 % 2 * 2 - 1 );
//  int y =  ( (i+2)/4) * ((i + 0) / 2 % 2 * 2 - 1  );
//  int z =  ( (i+2)*4) * ((i + 0) / 2 % 2 * 2 - 1  );
//    vertex(x * size +shift/50,y * size +shift/50, -z * size +shift/50);
    
//  }
//  endShape();
//}

void drawRect(int size, int r, int g, int b){
  noFill();
beginShape();

for (int i = 0; i < 100; i = i+1) {
  strokeWeight(i * 0.5);
  stroke(r, g, b, 102.325 - (i*0.75));
  int x =  ( (i+3)/4) * ((i + 1)  / 2 % 2 * 2 - 1 );
  int y =  ( (i+2)/4) * ((i + 0) / 2 % 2 * 2 - 1  );
  int z =  ( (i+2)*4) * ((i + 0) / 2 % 2 * 2 - 1  );
    vertex(x * size +shift/50,y * size +shift/50, -z * size +shift/50);
    
  }
  endShape();
}
