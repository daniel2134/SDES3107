size (500,500);
background (255,140,50);

//ex 14.1

translate (300,100);
rect (0,0,100,40);
translate (-300,-100);

pushMatrix ();
//ex 14.2 green circles

for( int k=5; k<=80;k+=5){  //using for structure instead of writing them out manually
  fill (20,k*2+50,k); 
  ellipse (25,25,50,50);
  translate (k,k);
}

popMatrix();
//ex 14.3 orange circles

pushMatrix ();
  fill (200,60,5); 
  ellipse (25,100,50,50);
  translate (5,5);

 ellipse (25,100,50,50);
  translate (10,5);
  
 pushMatrix ();
  
   ellipse (25,100,50,50);
  translate (23,-10);
  
    pushMatrix ();
  
   ellipse (25,100,50,50);
  translate (30,-10);
  
    popMatrix ();
  
   ellipse (25,100,50,50);

    popMatrix ();
  
   ellipse (25,100,50,50);
   
       popMatrix ();
  
   ellipse (25,100,50,50);
