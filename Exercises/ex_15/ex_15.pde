size (1000,700);
//ex 15.1 pg 159


//fuzzy coloured background
for (int x=0; x<width; x++){
  for (int y=0; y<height; y++){
    float c1 = random(100);
    colorMode (HSB,100,100,100);
    stroke (c1,100,100);
    point(x,y);
  }
}

//zigzag lines

stroke (0);
strokeWeight (4);

for (float y4 = 0; y4<height;y4+=100){
float y2  = 100+ y4;
for (float x2=0; x2<width; x2+=100){
  float y3 = random (50+y4,150+y4);
  line(x2,y2,x2+100,y3);
  y2 = y3;
}
}

//20 randomly positioned circles


colorMode (RGB);
  noStroke ();

for (int b=1;b<=20;b++){
  float ex = random(1000);
  float ey = random (700);
  ellipse (ex,ey,30,30);
}
  
  
  
  
  

