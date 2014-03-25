int videoScale = 8;
int cols, rows;
int wavePosition = 0;

void setup() {
  size(480,480);
  frameRate(10);
  //noStroke();
  
  // Initialize columns and rows
  cols = width/videoScale;
  rows = height/videoScale;
}

void draw() {
  
  // Begin loop for columns
  for (int i = 0; i < cols; i++) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++) {
      
      // Scaling up to draw a rectangle at (x,y)
      int x = i*videoScale;
      int y = j*videoScale;
      
      if (i == wavePosition){
        fill(255, 102, 102);
      }
      else {
        if (abs(wavePosition - i) == 1)
          fill(255, 153, 153);
        else
          if (abs(wavePosition - i) == 2)
            fill(255, 204, 204);
          else
            fill(150);
      }
      //stroke(0);
      // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
      rect(x,y,videoScale,videoScale); 
    }
  }
  if (wavePosition == cols)
    wavePosition = 0;
  else
    wavePosition++;
}
