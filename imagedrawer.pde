Brush[] brushes = new Brush[1000];
ArrayList<PImage> imgs = new ArrayList<PImage>();
PImage img;

boolean running = false;
float xmargin, ymargin;
float maxsize;

void setup() {
  int start = round(random(0, 40));
  for(int i = start; i < start + 10; i++) {
    imgs.add(loadImage("images/i" + i));
  }
  fullScreen();
  setUpImg();
  for (int i = 0; i < brushes.length; i++) {
    brushes[i] = new Brush();
  }
}
void draw() {
  if (running) {
    for (Brush b : brushes) {
      b.move();
      b.show();
    }
  }
}
void setUpImg() {
  img = imgs.get(round(random(imgs.size() - 1)));
  if (img.width <= width / 2 && img.height <= height / 2) {
    img.resize(img.width * 2, img.height * 2);
    if (img.width <= width / 2 && img.height <= height / 2) {
      img.resize(img.width * 2, img.height * 2);
    }
  }
  xmargin = (width - img.width) / 2;
  ymargin = (height - img.height) / 2;
  background(0);
}

void keyPressed() {
  switch(key) {
    case 'r':
      clear();
      setUpImg();
      break;
    case ' ':
      running = !running;
      break;
  }
}
