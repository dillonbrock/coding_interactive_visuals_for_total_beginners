PImage raccoon;


void setup(){
  size(800, 800);
  
  imageMode(CENTER);
}

void draw(){
  raccoon = loadImage("pope_hat_raccoon.png");
  //background(0);
  
  for(int i = 0; i < 10; i++){
    raccoon.resize(mouseX + 1, mouseY + 1);
 
  image(raccoon, mouseX + 100*i, mouseY - 50 * i);
  }
}
