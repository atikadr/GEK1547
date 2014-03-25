void setup() {
  size(640, 360);
  noStroke();
}

void draw() {
  background(0,51,102);
  
  fill(255);
  ellipse(70,70,100,100);
  fill(0,51,102);
  ellipse(90,90,80,80);
  
  fill(255, 255, 102);
  pushMatrix();
  translate(width*0.2, height*0.8);
  rotate(frameCount / -100.0);
  star(0, 0, 15, 40, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.5, height*0.2);
  rotate(frameCount / 100.0);
  star(0, 0, 10, 20, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.8, height*0.5);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
