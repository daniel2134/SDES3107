// P_2_2_4_02.pde
// 
// Generative Gestaltung, ISBN: 978-3-87439-759-9
// First Edition, Hermann Schmidt, Mainz, 2009
// Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
// Copyright 2009 Hartmut Bohnacker, Benedikt Gross, Julia Laub, Claudius Lazzeroni
//
// http://www.generative-gestaltung.de
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/**
 * limited diffusion aggregation 
 * 
 * KEYS
 * 1             : toggle draw original position of circles
 * s             : save png
 * p             : save pdf
 */

import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

int maxCount = 5000; //max count of the cirlces
int currentCount = 1;
float[] newx = new float[maxCount];
float[] newy = new float[maxCount];
float[] x = new float[maxCount];
float[] y = new float[maxCount];
float[] r = new float[maxCount]; // radius

// DLH   (newx[anything]) = 0 
// DLH   (new float[maxCount]) =increasing value
// DLH the above "float[]..." stuff sets the limits of possible newx, newy, x etc values



boolean drawGhosts = false;


 
 
void setup() {
  size(800, 800);
  smooth();

  // first circle
 
  x[0] = width/2;
  y[0] = height/2;
  
  r[0] = 150; 

  
  colorMode (HSB, 100,100,100);
  
}


void draw() {
  if (savePDF) beginRecord(PDF, timestamp()+".pdf");
  background(255);

  strokeWeight(0.5);
  //noFill();

  // create a random set of parameters

  
  float newR = random(1, 7);
      //DLH affects the size range of the circles
  float newX = random(0+newR, width-newR);
  float newY = random(0+newR, height-newR);
 //DLH float newX = random(-(width-100*newR), width-50*newR);
 //DLH float newY = random(-(height-100*newR), height-50*newR);
//float newX = random(50*newR, width-50*newR);
//float newY = random((50*newR), height-50*newR);
 
 
  float closestDist = 100000000;
      //DLH affects the distance between the original circle and added small circles
  int closestIndex = 0;
  // which circle is the closest?
  for(int i=0; i < currentCount; i++) {
    float newDist = dist(newX,newY,x[i],y[i]);
    if (newDist < closestDist) {
     closestDist = newDist;
     closestIndex = i; 
      
   } 
  }

  // aline it to the closest circle outline
  float angle = atan2(newY-y[closestIndex], newX-x[closestIndex]);

  newx[currentCount] = newX;
  newy[currentCount] = newY;
  x[currentCount] = x[closestIndex] + cos(angle) * (r[closestIndex]+newR);
  y[currentCount] = y[closestIndex] + sin(angle) * (r[closestIndex]+newR);
  r[currentCount] = newR;
  currentCount++;

  // draw circles at random position and lines
  if (drawGhosts) {
    for (int i=1 ; i < currentCount; i++) {
      fill(95,86,0,50);
      ellipse(newx[i],newy[i], r[i]*2,r[i]*2);  
      line(newx[i],newy[i], x[i],y[i]);

      
    }
  }
  

  
    for (int i=0 ; i < currentCount; i++) {
 //float HUE2 = map(i, 0, 5000, 0, 100);
float lighter = map(i,0,2000,0,245);
if (lighter == 245) lighter = 245;
  if (i == 0) noFill();
 else 

// fill(HUE2,100,100);
strokeWeight (1);
stroke(0+lighter);
  //  ellipse(x[i]-200,y[i]-200, r[i]*2,r[i]*2); 
  line(x[i+1],y[i+1], x[i+2], x[i+2]);
  
  
  }
}


void keyReleased() {
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_##.png");
  if (key == 'p' || key == 'P') savePDF = true;

  if (key == '1') drawGhosts = !drawGhosts;
}

// timestamp
String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}










