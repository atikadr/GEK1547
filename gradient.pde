int iteration = 102;
int i;
int colour;

//3 colours always iterate

void setup(){
  size(600, 600);
  frameRate(50);
  noStroke();
}

void draw(){
  background(255);
  colour = iteration;
  
  for (i = 600 ; i >0 ; i--){
    if (i%4 == 0){
      fill(255, colour, colour);
      ellipse(300, 300, i, i);
      colour++;
      if (colour == 252)
        colour = 102;
    }
  }
  
  iteration++;
  if (iteration == 252)
    iteration = 102;
}
