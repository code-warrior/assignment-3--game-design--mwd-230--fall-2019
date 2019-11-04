import processing.sound.*;

SoundFile crashSound;

void setup () {
  crashSound = new SoundFile(this, "audio/168312__likeclockwork__eh-crash-drum30.wav");
  size(1280, 800);
}

void draw () {
  background(100);
  drawObstacle();
  drawObstacle2();
  drawObstacle3();
  drawObstacle4();
  drawObstacle5();
  drawCreature();
}
