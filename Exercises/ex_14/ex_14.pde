size (1000, 500);
background (255);


// 14.2

noStroke ();
fill (0);
for (int deg = 0; deg<360;deg+=12){
  float a = radians(deg);
  float x = 600+(cos(a))*100;
  float y = 200+(sin(a))*100;
  ellipse(x,y,10,10);
}

for (int deg = 0; deg<360;deg+=90){
  float a = radians(deg);
  float x = 600+(cos(a))*50;
  float y = 200+(sin(a))*50;
  ellipse(x,y,30,30);
}


for (int deg2 = 0; deg2<360;deg2+=12){
  colorMode (HSB);
fill (deg2, 255, 360);
  float a = radians(deg2);
arc(600,200,150,150,a,a+radians(6));

}

//ex 14.3
noFill ();
strokeWeight (3);

colorMode (RGB);

float x;
float y = 30;
for (x=0; x<15*PI; x+=0.3){
arc (200,200,y,y,x,x+0.2);
y+=5;
stroke (20*x,y,10);
}



