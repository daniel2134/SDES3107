// press 1, 2 or 3

void setup (){
  size (500,500);
  background (0);
  strokeWeight (5);
 
}

 float a = 0;

void draw (){
  background (0);
  stroke (255);
  line(50, 550-a,50, 500-a);  //constantly running white line
  a+=5;
  if (a ==520){
    a = 0;
  }
  
  if ((keyPressed == true) && (key == '1')){
// red line runs if pressing '1'
    stroke (200,30,30);
      line(150, 550-a,150, 500-a);
 }
   if ((keyPressed == true) && (key == '2')){
// green line runs if pressing '1'
    stroke (20,230,30);
      line(250, 550-a,250, 500-a);
 }
    if ((keyPressed == true) && (key == '3')){
// blue line runs if pressing '1'
    stroke (20,30,230);
      line(350, 550-a,350, 500-a);
 }
 
}
