import java.util.Arrays;
/*
  Collision detection!
*/
PImage bg;
PImage obs;

public boolean firstBackground = true;

public final static int HEAD_WIDTH_HEIGHT = 75;
public final static int BODY_WIDTH = 250;
public final static int BODY_HEIGHT = 150;
public final static int MOVEMENT_SPEED = 10;
public final static int TRUE_GRAY = (255/2);
public final static int WHITE = 255;
public final static int TOTAL_WIDTH = (50 + BODY_WIDTH + HEAD_WIDTH_HEIGHT);
public final static int TOTAL_HEIGHT = (50 + BODY_HEIGHT);
public final static int OBS_WIDTH = 100;
public final static int OBS_HEIGHT = 100;

public int[][] obsPoints = {
  {0,0},
  {260,160},
  {510,320},
  {770, 480},
  {1020, 640}
};

public int starting_x = 20;
public int starting_y = 800 - TOTAL_HEIGHT;

void setup() {
  size(1280, 800);
  setBackground();
  bg = loadImage("img/Background--1.jpg");
  obs = loadImage("img/Obstacle--1.png");
}

void drawObstacles(int point_x, int point_y) {
  if(firstBackground) {
    image(obs, point_x, point_y);
  }
  else {
    stroke(0);
    ellipse(point_x, point_y, OBS_WIDTH, OBS_HEIGHT);
  }
}

void setBackground() {
  if(firstBackground) {
    background(255);
  }
  else {
    background(bg);
  }
}

void drawCreature(int point_x, int point_y) {
    point(point_x, point_y);

    //Body
    fill(TRUE_GRAY);
    rect(point_x, point_y, BODY_WIDTH, BODY_HEIGHT);

    //Head
    fill(TRUE_GRAY);
    rect(point_x+200+HEAD_WIDTH_HEIGHT/2, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2, HEAD_WIDTH_HEIGHT, HEAD_WIDTH_HEIGHT);

    //Tusks
    fill(WHITE);
    triangle(
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20,
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT,
        point_x+200+HEAD_WIDTH_HEIGHT+100, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT+20);
    triangle(
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20,
        point_x+200+HEAD_WIDTH_HEIGHT, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT,
        point_x+200+HEAD_WIDTH_HEIGHT+100, point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + HEAD_WIDTH_HEIGHT-20);

    //Eye
    //light blue
    fill(52, 204, 255);
    ellipse(point_x+200+HEAD_WIDTH_HEIGHT/2 + (HEAD_WIDTH_HEIGHT/1.75), point_y + BODY_WIDTH/3 - HEAD_WIDTH_HEIGHT/2 + (HEAD_WIDTH_HEIGHT/1.75), 10, 10);

    //Legs
    fill(TRUE_GRAY);
    rect(point_x + (BODY_WIDTH/4)-10, point_y + BODY_HEIGHT, 10, 50);
    rect(point_x + (BODY_WIDTH/4)*3-10, point_y + BODY_HEIGHT, 10, 50);
}

void draw() {
  setBackground();
  for(int i = 0; i < 5; i++) {
    drawObstacles(obsPoints[i][0],obsPoints[i][1]);
  }
  drawCreature(starting_x, starting_y);

}

boolean hasColliedLeft(int[][] obsArray) {
  boolean status = false;

  for(int i = 0; i < obsArray.length; i++){
    if((starting_x + TOTAL_WIDTH >= obsPoints[i][0]) &&
       (starting_x + TOTAL_WIDTH <= obsPoints[i][0] + OBS_WIDTH)){
      if((starting_y >= obsPoints[i][1] && starting_y <= obsPoints[i][1] + OBS_HEIGHT)
          || (starting_y + TOTAL_HEIGHT <= obsPoints[i][1] + TOTAL_HEIGHT && starting_y + TOTAL_HEIGHT >= obsPoints[i][1]))
      {
        status = true;
        break;
      }
    }
  }

  return status;
}

boolean hasColliedRight(int[][] obsArray) {
  for(int i = 0; i < obsArray.length; i++){
    if(starting_x <= obsPoints[i][0] + OBS_WIDTH && starting_x >= obsPoints[i][0]){
      if((starting_y >= obsPoints[i][1] && starting_y <= obsPoints[i][1] + OBS_HEIGHT)
          || (starting_y + TOTAL_HEIGHT <= obsPoints[i][1] + TOTAL_HEIGHT && starting_y + TOTAL_HEIGHT >= obsPoints[i][1]))
      {
        return true;
      }
    }
  }
  return false;
}

boolean hasColliedUp(int[][] obsArray) {
  for(int i = 0; i < obsArray.length; i++){
    if(starting_y >= obsPoints[i][1] && starting_y <= obsPoints[i][1] + OBS_HEIGHT){
      if((starting_x + TOTAL_WIDTH >= obsPoints[i][0] && starting_x + TOTAL_WIDTH <= obsPoints[i][0] + OBS_WIDTH)
          || (starting_x <= obsPoints[i][0] + OBS_WIDTH && starting_x >= obsPoints[i][0]))
          {
            return true;
          }
      }
  }
  return false;
}

boolean hasColliedDown(int[][] obsArray) {
  for(int i = 0; i < obsArray.length; i++){
    if(starting_y + TOTAL_HEIGHT >= obsPoints[i][1] && starting_y + TOTAL_HEIGHT <= obsPoints[i][1] + OBS_HEIGHT){
      if((starting_x + TOTAL_WIDTH >= obsPoints[i][0] && starting_x + TOTAL_WIDTH <= obsPoints[i][0] + OBS_WIDTH)
          || (starting_x <= obsPoints[i][0] + OBS_WIDTH && starting_x >= obsPoints[i][0])){
            return true;
          }
    }
  }
  return false;
}

void keyReleased() {
  if(keyCode == 38 && starting_y > 0 && !hasColliedUp(obsPoints)) {
    starting_y -= MOVEMENT_SPEED;
  }
  else if(keyCode == 40 && starting_y < height - TOTAL_HEIGHT && !hasColliedDown(obsPoints)) {
    starting_y += MOVEMENT_SPEED;
  }
  else if(keyCode == 37 && starting_x > 0 && !hasColliedRight(obsPoints)) {
    starting_x -= MOVEMENT_SPEED;
  }
  else if(keyCode == 39 && starting_x < width - TOTAL_WIDTH && !hasColliedLeft(obsPoints)) {
    starting_x += MOVEMENT_SPEED;
  }
  else if((keyCode == 70 && !firstBackground) || (keyCode == 83 && firstBackground)){
    firstBackground = !firstBackground;
  }
  //Debugging
  else {

    //left up right down
    // 37  38 39    40
  }
  //System.out.println("No way jose " + key + " " + keyCode + " " + starting_x + " " + starting_y + " Has collided: " + hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT));
}
