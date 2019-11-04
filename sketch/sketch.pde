void setup() {
  size(1280, 800);
  bg = loadImage("img/bg-f.jpg");
  animatedCreature();
  stationaryObjects();
}

void draw() {
  bgChecker();
  bgChanger();
  fill(0);
  obstacles();
  drawCreature(start_x, start_y);
}
