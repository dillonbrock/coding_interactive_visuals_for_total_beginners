/**
 * This sketch shows how to use the FFT class to analyze a stream
 * of sound. Change the number of bands to get more spectral bands
 * (at the expense of more coarse-grained time resolution of the spectrum).
 */

import processing.sound.*;

// Declare the sound source and FFT analyzer variables
SoundFile sample;
FFT fft;

// Define how many FFT bands to use (this needs to be a power of two)
int bands = 128;

// Define a smoothing factor which determines how much the spectrums of consecutive
// points in time should be combined to create a smoother visualisation of the spectrum.
// A smoothing factor of 1.0 means no smoothing (only the data from the newest analysis
// is rendered), decrease the factor down towards 0.0 to have the visualisation update
// more slowly, which is easier on the eye.
float smoothingFactor = 0.2;

// Create a vector to store the smoothed spectrum data in
float[] sum = new float[bands];

// Variables for drawing the spectrum:
// Declare a scaling factor for adjusting the height of the rectangles
int scale = 5;
// Declare a drawing variable for calculating the width of the 
float barWidth;

boolean printed = false;



public void setup() {
  size(640, 360);
  background(255);

  // Calculate the width of the rects depending on how many bands we have
  barWidth = width/float(bands);

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff");
  sample.loop();

  
  // Create the FFT analyzer and connect the playing soundfile to it.
  fft = new FFT(this, bands);
  fft.input(sample);
}

public void draw() {
  // Set background color, noStroke and fill color
  background(125, 255, 125);
  //fill(255, 0, 150);
  noStroke();
  
  float maxValue = 0;
  int maxIndex = 0;

  // Perform the analysis
  fft.analyze();
  

  for (int i = 0; i < bands; i++) {
    // Smooth the FFT spectrum data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smoothingFactor;
    
    //find the max value in the frequency array, save the index in maxIndex variable
    if (sum[i] > maxValue) {
        maxValue = sum[i];
        maxIndex = i;
      }

    // Draw the rectangles, adjust their height using the scale factor
    //rect(i*barWidth, height, barWidth, -sum[i]*height*scale);
  }
  
  //map the value of maxIndex to range from 0 to 255
  float mappedColor = map(maxIndex, 0, 127, 0, 255);
  fill(mappedColor, 100, 100);
  ellipse(width/2, height/2, 200, 200);
  
  /*
  there's not much of a difference in the fill color of the ellipse because
  maxIndex is pretty consistently a low value. hopefully with a more pitch-focused
  audio file this would work properly
  */
  
  println(mappedColor);

}

//want color to respond to pitch
//respond to the most dominant pitch
//i need to find a way to find the most dominant pitch
//use that pitch to control color, which probably means using the map() function
