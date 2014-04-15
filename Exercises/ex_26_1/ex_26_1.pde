void setup (){
  fill (100,100,100);
  size (500,500);
  background (255);
}


// ex 26.1

  float x = 0;

void draw (){

  rect (100+x,100+x,120+x,200+x);
}

void mousePressed (){
fill (200,0,0);
}

void mouseReleased (){
 fill (100,100,100);
}
  
