int number = 100;
float division = 320.0/number;
int firstTime;

int i;
int[] array = new int[number];
int curIndex = 0;

void setup(){
  size(320, 320);
  frameRate(10);
  for (i = 0 ; i < number ; i++){
    array[i] = int(random(300));
  }
  noStroke();
  firstTime = 0;
}

void draw(){
  
  if (firstTime == 0){
   int time = millis();
    while(millis() - time < 3000);
  firstTime = 1;  
}
    
  
  background(0);
  fill(255);
  for (i = 0 ; i < number ; i++){
    rect(division * i, 0, division, array[i]);
  }
  
  sort();
}

void sort(){
  int minimum = 1000;
  int index = -1;
  for (i = curIndex ; i < number ; i++){
    if (array[i] < minimum){
      minimum = array[i];
      index = i;
    }
  }
  
  if (index != -1 && index != number){
    fill(0, 204, 204);
    rect(division * index, 0, division, array[index]);
    fill(255, 153, 153);
    rect(division * curIndex, 0, division, array[curIndex]);
    
    int temp = array[index];
    array[index] = array[curIndex];
    array[curIndex] = temp;
    
    int time = millis();
    while(millis() - time < 100);
    
    fill(0);
    rect(division * index, 0, division, array[index]);
    rect(division * curIndex, 0, division, array[curIndex]);
    
    fill(255, 153, 153);
    rect(division * curIndex, 0, division, array[index]);
    fill(0, 204, 204);
    rect(division * index, 0, division, array[curIndex]);
  }
  
  curIndex++; 
}
