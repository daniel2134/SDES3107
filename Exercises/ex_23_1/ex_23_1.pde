void setup(){
  size (500,500);
}

void draw (){
  background (0,10,10);

  fill(0.5*mouseX,0.5*mouseY,0.3*mouseX); //makes circles change colour depending on mouse position
  ellipse (mouseX*1.3, mouseY*1.3, 30,30);
    ellipse (mouseX*1.5, mouseY*0.8, 30,30);
      ellipse (mouseX*2, mouseY*1, 30,30);
        ellipse (mouseX, mouseY*5, 30,30);
         ellipse (mouseX, mouseY, 100,100);
            ellipse (mouseX-0.4*mouseY, mouseY-0.5*mouseX, 60,60);
         ellipse (mouseX-0.2*mouseX, mouseY-0.3*mouseY, 80,80);
         fill (150,10,10);
         ellipse (mouseX, mouseY, 30,30);
}
  
  
