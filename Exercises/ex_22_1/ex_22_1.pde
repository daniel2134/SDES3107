void setup(){
  size (500,500);
  background (255);
  stroke (0);
}

//22.1

int variable = -30; //insert something around -30 to +30
int f = 10 * variable;

void draw(){
  arch (f);
}

void arch (int f){
    
beginShape ();
vertex (300+f, 255);
bezierVertex (450-f,100,450,400,300+f,255);
bezierVertex (50,400-f,50,100,300+f,255);
endShape ();
}




