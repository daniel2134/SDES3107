// EX 9.1 full screen gradient

size (500,500);
background (255);

noStroke ();

for (int x=0;x<255;x+=25){
  fill (x, 100, x*0.5);
  rect (2*x,0,2*x+60,height);
}

//EX 9.2 purple/blue gradient square

colorMode (HSB, 360,360,360);

for (int i=100;i<300;i++){
  stroke (i, i*0.5,i*0.5);
  line (100+i,100,100+i,300);
}

