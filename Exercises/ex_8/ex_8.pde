// ex 8 

size (500,500);
background (255);


/*
for (int x = 0; x<100; x++){
  float n = norm(x,0.0,100.0);
  float y = pow(n,4);
  y *=100;
  point(x,y);
}
*/

// 8.1 curve y = 1-x^4

for (int x = 0;x<100;x++){ //sets the range of the graph from 0-100
  float n = norm(x,0.0,100.0); //turns x values ranging from 0-100 to n values between 0 and 1, since this is the range in which the graph has its curve and is the bit we want to see
  float y = 1-pow(n,4); //technically this is graphing 1-n^4 instead of 1-x^4...but its the same thing really
  y*=100; //this multiples y by 100 at every point, otherwise y ranges from 0-1 and looks like a straight line
  point (x,y);
}

// EX 8.2 y = x^8


for (int x = 0; x<100; x+=2){
  float n = norm(x,0.0,100.0);
  float y = pow(n,8);
  y *=100;
  line(x+200,y,100,200);
}

