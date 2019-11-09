int NUM = 10000;
float[] x = new float[NUM];
float[] y = new float[NUM];

void setup() {
  size(800, 600, P2D);
  frameRate(60); 
  background(0);
}

void draw() {
  stroke(255);
  noFill();
  blendMode(ADD);
  if (mousePressed == true) {
    for (int i = 0; i < NUM; i++) {
      point(mouseX + x[i], mouseY + y[i]);
      x[i] = x[i] + random(-4.0, 4.0);
      y[i] = y[i] + random(-4.0, 4.0);
    }
  }
}
