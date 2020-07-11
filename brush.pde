class Brush {
  PVector pos = new PVector();
  float xoff = random(500);
  float yoff = random(500);
  Brush() {
  
  }
  void move() {
    xoff+=0.0009;
    yoff+=0.0009;
    pos.set(noise(xoff) * img.width, noise(yoff) * img.height);
  }
  void show() {
    color c1 = img.get(round(pos.x), round(pos.y));
    fill(c1);
    noStroke();
    float size = 3;
    ellipse(pos.x + xmargin, pos.y + ymargin, size, size);
  }
}
