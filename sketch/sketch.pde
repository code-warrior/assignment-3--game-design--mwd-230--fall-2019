import java.util.Arrays;
/*
  Collision detection!
*/
final static int BOX_ONE_WIDTH = 50;
final static int BOX_ONE_HEIGHT = 50;
final static int BOX_TWO_WIDTH = 50;
final static int BOX_TWO_HEIGHT = 50;
final static int MOVEMENT_SPEED = 10;
int starting_x = 140;
int starting_y = 200;
int[][] obsPoints = {{200},{200}};
void setup() {
  size(400, 400);
  background(0);
}

void drawImmovable() {
  fill(0, 255, 0);
  rect(200, 200, BOX_TWO_WIDTH, BOX_TWO_HEIGHT);
}

void draw() {
  background(0);
  drawImmovable();
  fill(0,255,0);
  rect(starting_x, starting_y, BOX_ONE_WIDTH, BOX_ONE_HEIGHT);
}

boolean hasCollided() {
  if(hasColliedUp() || hasColliedRight() || hasColliedLeft() || hasColliedDown()){
    return true;
  }
  else {
    return false;
  }
}

boolean hasColliedLeft() {
  if(obsPoints[0][0] < starting_x + BOX_TWO_WIDTH &&
     obsPoints[0][0] + BOX_ONE_WIDTH + BOX_TWO_WIDTH > starting_x &&
     obsPoints[1][0] < starting_y + BOX_TWO_WIDTH &&
     obsPoints[1][0] + BOX_ONE_WIDTH + BOX_TWO_WIDTH > starting_y ){
       return true;
     }
  return false;
}

boolean hasColliedRight() {
  return false;
}

boolean hasColliedUp() {
  return false;
}

boolean hasColliedDown() {
  return false;
}

void keyReleased() {
  if(!hasCollided()) {
    if(keyCode == 38 && starting_y > 0) {
      starting_y -= MOVEMENT_SPEED;
    }
    else if(keyCode == 40 && starting_y < height - BOX_ONE_HEIGHT) {
      starting_y += MOVEMENT_SPEED;
    }
    else if(keyCode == 37 && starting_x > 0) {
      starting_x -= MOVEMENT_SPEED;
    }
    else if(keyCode == 39 && starting_x < width - BOX_ONE_WIDTH) {
      starting_x += MOVEMENT_SPEED;
    }
    //Debugging
    else {
      
      //left up right down
      // 37  38 39    40
    }
  }
  //System.out.println("No way jose " + key + " " + keyCode + " " + starting_x + " " + starting_y + " Has collided: " + hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT));
}