int x, y, R, G, B, radius;
int temp;

void setup() {
  size(640, 360);
  noStroke();
  background(255);
  temp = millis();
}

void draw() {
  while (millis() - temp < 3000){
  }
  
  x = -1;
  y = 0;
  while (y - (0.25 * x) <= 130 || x == -1){
    x = int(random(width));
    y = int(random(height));
  }
  R = int(random(50, 255));
  G = int(random(50, 255));
  B = int(random(50, 255));
  fill(178, 255, 102, 100);
  radius = int(random(20, 40));
  ellipse(x, y, radius, radius);
  
  x = -1;
  y = 0;
  while (y - (0.25 * x) <= 130 || x == -1){
    x = int(random(width));
    y = int(random(height));
  }
  fill(255, G, B);
  radius = int(random(10, 20));
  ellipse(x, y, 15, 15);
  
  
  x = -1;
  y = 0;
  while (y - (0.25 * x) > 130 || x == -1){
    x = int(random(width));
    y = int(random(height));
  }
  fill(random(51,102), random(102,255), 255, 100);
  radius = int(random(20, 30));
  ellipse(x, y, radius, radius);

  x = int(random(450, width));
  y = int(random(50));
  fill(255, 255, 255, 10);
  radius = int(random(70, 80));
  ellipse(x, y, radius, radius);
  
  x = int(random(100, 250));
  y = int(random(70, 90));
  fill(255, 255, 255, 10);
  radius = int(random(70, 80));
  ellipse(x, y, radius, radius);
      
  /*
  x = int(random(50));
  y = int(random(100, height));
  fill(random(153,204), random(76,204), 0, 100);
  radius = int(random(20, 30));
  ellipse(x, y, radius, radius);
  
  x = -1;
  y = 0;
  while (y + x > 150 || x == -1){
    x = int(random(width));
    y = int(random(height));
  }
  
  if (random(1) < 0.5)
    fill(0, 153, 0, 100);
  else
    fill(255, 102, 102, 100);
  radius = int(random(20, 30));
  ellipse(x, y, radius, radius);
  */
}

