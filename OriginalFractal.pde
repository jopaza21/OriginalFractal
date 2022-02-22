public int size = 300;

public void setup() {
  size(400,400);
  background(0);
}

public void draw() {
  myFractal(200,200,300);
}

public void keyPressed() {
  if(key == 'w' && size >= 2) { 
    size /= 2;
  }
  if(key == 's' && size <= 300) {
    size *= 2;
  }
}

public void myFractal(int x, int y, int len) {
  ellipse(x, y, len, len);
  if(len < size +1) {
  }
  else {
    myFractal(x-len/4,y,len/2);
    myFractal(x+len/4,y,len/2);
  } 
}
