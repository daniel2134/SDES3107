size (500,500);
background(255);


PImage img;
img = loadImage("ignatz.jpg");

tint(0,150,150);
image (img,0,0,width,height);

PImage moon;
tint(255,100,100);
moon = loadImage("moon.png");

image(moon,350,50,100,100);

tint(200,50,50);
PImage yin;
yin = loadImage("yin.png");

int y=200;
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
y-=10;
image (yin,350,y,100,100);
