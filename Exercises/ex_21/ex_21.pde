void setup (){
  size (500,500);
  background (255);
}

//21.1

void colourEllipse (int hue,int x, int y){
  noStroke ();
  colorMode (HSB);
  fill (hue, 360,360);
  ellipse (x,y,100,50);
  ellipse (x+20,y+20,80,80);
}

//21.2
void ANOTHERcolourEllipse (int HUE,int X, int Y,int z, int v){
  noStroke ();
  colorMode (HSB);
  fill (HUE, 100,300);
  ellipse (X+100,Y,z+X,v);
  ellipse (X+120,Y+20,v+X,z);
}


void draw (){
  // 21.2
  for (int k=0; k<100; k+=5)
  ANOTHERcolourEllipse (5*k,k*10,k*10,k*5,k*5);
  
  
  //21.1
  for (int i=0; i<100; i+=5)
  colourEllipse (5*i,i*10,i*10);
  
  
}






