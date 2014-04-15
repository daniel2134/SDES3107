// press P to move around image 

void setup (){
 
  size (300,700);
  PImage alien;
alien = loadImage ("cartoon_aliens_5.gif");
image(alien,0,0,300,700);

}


void draw (){
    size (300,700);
    if ((keyPressed == true) && (key == 'p')){
  PImage alien;
alien = loadImage ("cartoon_aliens_5.gif");
image(alien,0,0,300,700);
PImage cream;
cream = loadImage ("leaf_air_space.png");
image(cream, mouseX-60,mouseY-57,120,115);
    }
}

