// use any key, try pressing it intermitently, rapidly and holding


void setup (){
  size (500,500);
  colorMode (HSB, 100, 100, 100);
  fill (0,100,100);
}

 int x = 0;

void draw(){
  ellipse (250,250,400,400);
 x++;
 if (x == 100){
   x = 0;
 }
}

 
 
  
  void keyPressed (){
    fill (x,100,100);
  }
