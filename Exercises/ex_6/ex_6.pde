size (1000,500);
background (255);

// ex 7.1 //

stroke(0);
beginShape ();
vertex (10,10);
vertex (50,80);
vertex (60,150);
vertex (30,100);
vertex (10,10);
endShape ();

// ex 7.2 //

float p = 2;
beginShape ();
vertex (p*p, 5.7*p);
println (p*p);
println (5.7*p);
p = p+10;
vertex (p*p, 5.7*p);
p = p+10;
vertex (p*p, 5.7*p);

endShape (CLOSE);

fill (100);
beginShape();
vertex (100,300);
for (int i = 20;i<100;i+=20){
  vertex(100 + i, 300);
  vertex(100-i, 300+i);
}
endShape(CLOSE);

strokeWeight (5);
stroke (100,10,200);
point (100,300);
//purple point//

stroke (0,200,200);
point (120,300);
//light blue//

stroke (100,30,0);
point (60,340);
//marroon//

stroke (0,220,0);
point (80,320);
//green//



