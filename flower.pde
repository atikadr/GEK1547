int rotation = 1;
int colour = 0;
boolean setup = true;

void setup(){
  size(600,600);
  noFill();
  frameRate(10);
  background(0);
  stroke(255,51,51);
  strokeWeight(3);
}

void draw(){
  if (setup == true){
    int temp = millis();
    while (millis() - temp < 3000);
      setup = false;
  }
  
  pushMatrix();
  translate(300, 300);
  rotate(rotation * PI / 16);
  ellipse(0,0,500,100);
  popMatrix();
  
  rotation++;
  if (rotation == 17){
    rotation = 1;
    
    colour++;
    if (colour == 7)
      colour = 0;
      
    switch(colour){
      case 0: stroke(255,51,51); break;
      case 1: stroke(255,153,51); break;
      case 2: stroke(255,255,51);break;
      case 3: stroke(153,255,51);break;
      case 4: stroke(51,255,255);break;
      case 5: stroke(153,153,255);break;
      case 6: stroke(204,0,204);break;
      default: break;
    }    
  }
}

