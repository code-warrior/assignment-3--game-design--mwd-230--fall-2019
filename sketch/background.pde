void renderBGCircles() {
  background(125);
  for (int i = 0; i < width; i += 50) {
    for (int j = 0; j < height; j += 120) {
      fill( random(255), random(255), random(255), random(255));
      circle(i, j+35, 100);
    }
  }
}

//Check for if 'F' or 'S' key are previously pressed
void bgChecker() {
  if(keyPressed) {
      if(key == 'f' || key == 'F') {
        previous_key_press = F_KEY;
      } else if(key == 's' || key == 'S') {
          previous_key_press = S_KEY;
        }
    }
}

void bgChanger() {
  if(previous_key_press == F_KEY) {
    background(bg);
   } else if(previous_key_press == S_KEY) {
      renderBGCircles();
     }
}
