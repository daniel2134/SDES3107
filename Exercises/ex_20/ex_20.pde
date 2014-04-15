void setup(){
size (500,500);
background (255);
frameRate (4);
colorMode (HSB);
}

void draw(){
  //20.1
println (frameCount); 
//20.2
if (frameCount*15 < width+50){ //stops sequence after leaving screen
float x = -25+15*frameCount;
fill (x*0.5,100,360); 
ellipse (x,200,50,50);
}
else //starts new sequence in opposite direction and slightly lower
{ 
float z = width+25-15*(frameCount-38);
ellipse (z,225,50,50);
fill (z*0.5,100,360);
}}
