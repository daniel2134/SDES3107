size (200,200);

float x = 0.5*width;
float y = 0.75*height;

println (0.5*width);
println (0.75*height);

float d = width-x;
float h=height-y;

println (width-x);
println (height-y);

rect (d/2,h/2,x,y);

int a = 20;
int b = 30;

ellipse (width/2 - 10,height/2-10,a,b);
ellipse (width/2 + 10,height/2-10,a,b);
ellipse (width/2 + 10,height/2+10,a,b);
ellipse (width/2 - 10,height/2+10,a,b);

