PImage rainbow;
PImage zoom;
color pixelColour;

void setup(){
size(1000,1000);
rainbow = loadImage ("rainbow_peace.jpeg");
}

void draw (){
image(rainbow,0,0,width,height);
zoom = get(mouseX-10,mouseY-10,20,20);
image (zoom, 750, 750, 200, 200);
pixelColour = get(mouseX, mouseY);
fill(pixelColour);
rect(750,500,200,200);
noFill();
rect(750,750,200,200);
}
