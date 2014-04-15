//ex 22.3

int x = 20; // X-coordinate
int u = 14; // Units
float a = -0.12; // Angle

void setup() {
size(1000, 300);
stroke(0, 153);
smooth();
noLoop();
}

void draw() {
background(204);
for (int m = 0; m<1000; m+=50){
tail(x+m, u, a);
}
}


void tail(int xpos, int units, float angle) {
pushMatrix();
translate(xpos, 0);
for (int i = units; i > 0; i--) { // Count in reverse
strokeWeight(i);
line(0, 0, 0, 8);
translate(0, 8);
rotate(angle);
}
popMatrix();
}
