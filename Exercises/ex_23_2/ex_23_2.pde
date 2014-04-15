//23.2

void setup(){
  size (500,500);
  colorMode (HSB,100,100,100);
}

void draw (){
  
  //pivoting blue triangle
  
  background (0);
  fill( 50,50,50);
  
   if (mousePressed == true){
       fill( 100,100,100);
   }
  triangle (mouseX - 50,mouseY - 50, mouseX*0.3, mouseY*0.3, 100+(mouseX*0.3), 100+(mouseY*0.3));
 
  
  //pivoting rainbow square
  
  pushMatrix ();
   float angle = map(mouseY, 0, height, 0, 2* PI);
  if (mousePressed ==true){

    rotate (-0.3*angle);
  }
 
    translate (250,250);
    fill (0.1*mouseX, 80,80);
    rotate (angle);
    rect (0,0,100,100);
    popMatrix ();
    
    ////////  ellipse
    
   
    
      float a = map(mouseX, 0, width, 5, 100);
    float b = map(mouseY, 0, width, 10, 200);
    
    if (mousePressed == false){
   fill (40,100,100,50);
   ellipse (350,350,a,b);
    }
    else {
        fill (0,100,100,100);
   ellipse (300,300,0.5*a,0.5*b);
      ellipse (400,400,0.5*a,0.5*b);
    }
 
}
  
