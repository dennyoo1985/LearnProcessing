/**
 * Array. 
 * 
 * An array is a list of data. Each piece of data in an array 
 * is identified by an index number representing its position in 
 * the array. Arrays are zero based, which means that the first 
 * element in the array is [0], the second element is [1], and so on. 
 * In this example, an array named "coswav" is created and
 * filled with the cosine values. This data is displayed three 
 * separate ways on the screen.  
 */

// declare an float array named cosway
float[] coswave; 

void setup() {
  // set window size
  size(640, 400);
  
  // new array object
  coswave = new float[width];
  for (int i = 0; i < width; i++) {
    // map(value, start1, stop1, start2, stop2);
    float amount = map(i, 0, width, 0, PI);
    coswave[i] = abs(cos(amount));
  }
  background(255);
  noLoop();
}

void draw() {

  int y1 = 0;
  int y2 = height/3;
  for (int i = 0; i < width; i+=2) {
    stroke(coswave[i]*255);
    line(i, y1, i, y2);
  }

  y1 = y2;
  y2 = y1 + y1;
  for (int i = 0; i < width; i+=2) {
    stroke(coswave[i]*255 / 4);
    line(i, y1, i, y2);
  }
  
  y1 = y2;
  y2 = height;
  for (int i = 0; i < width; i+=2) {
    stroke(255 - coswave[i]*255);
    line(i, y1, i, y2);
  }
  
}

