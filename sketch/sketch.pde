import java.util.Arrays;
/*
  Collision detection!
*/
public int starting_x = 50;
public int starting_y = 50;
public boolean firstBackground = true;
PImage bg;
PImage obs;
public final static int HEAD_WIDTH_HEIGHT = 75;
public final static int BODY_WIDTH = 250;
public final static int BODY_HEIGHT = 150;
public final static int MOVEMENT_SPEED = 10;
public final static int TRUE_GRAY = (255/2);
public final static int WHITE = 255;
public int[][] obsPoints = new int[2][5];
final int TOTAL_WIDTH = (50 + BODY_WIDTH + HEAD_WIDTH_HEIGHT);
final int TOTAL_HEIGHT = (50 + BODY_HEIGHT);
final int OBS_WIDTH = 50;
final int OBS_HEIGHT = 50;

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
    ellipse(point_x, point_y, 50, 50);
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
    drawObstacles(obsPoints[0][i],obsPoints[1][i]);
  }
  drawCreature(starting_x, starting_y);

}

boolean hasColliedLeft() {
  if(starting_x + TOTAL_WIDTH >= obsPoints[0][0] && starting_x + TOTAL_WIDTH <= obsPoints[0][0] + OBS_WIDTH){
    if((starting_y >= obsPoints[0][1] && starting_y <= obsPoints[0][1] + OBS_HEIGHT) 
        || (starting_y + TOTAL_HEIGHT <= obsPoints[0][1] + TOTAL_HEIGHT && starting_y + TOTAL_HEIGHT >= obsPoints[0][1]))
    {
      return true;
    }
  }
  return false;
}

boolean hasColliedRight() {
  if(starting_x <= obsPoints[0][0] + OBS_WIDTH && starting_x >= obsPoints[0][0]){
    if((starting_y >= obsPoints[0][1] && starting_y <= obsPoints[0][1] + OBS_HEIGHT) 
        || (starting_y + TOTAL_HEIGHT <= obsPoints[0][1] + TOTAL_HEIGHT && starting_y + TOTAL_HEIGHT >= obsPoints[0][1]))
    {
      return true;
    }
  }
  return false;
}

boolean hasColliedUp() {
  if(starting_y >= obsPoints[0][1] && starting_y <= obsPoints[0][1] + OBS_HEIGHT)
  {
    if((starting_x + TOTAL_WIDTH >= obsPoints[0][0] && starting_x + TOTAL_WIDTH <= obsPoints[0][0] + OBS_WIDTH) 
        || (starting_x <= obsPoints[0][0] + OBS_WIDTH && starting_x >= obsPoints[0][0])){
          return true;
        }
  }
  return false;
}

boolean hasColliedDown() {
  if(starting_y + TOTAL_HEIGHT >= obsPoints[0][1] && starting_y + TOTAL_HEIGHT <= obsPoints[0][1] + OBS_HEIGHT){
    if((starting_x + TOTAL_WIDTH >= obsPoints[0][0] && starting_x + TOTAL_WIDTH <= obsPoints[0][0] + OBS_WIDTH) 
        || (starting_x <= obsPoints[0][0] + OBS_WIDTH && starting_x >= obsPoints[0][0])){
          return true;
        }
  }
  return false;
}

void keyReleased() {
  if(keyCode == 38 && starting_y > 0 && !hasColliedUp()) {
    starting_y -= MOVEMENT_SPEED;
  }
  else if(keyCode == 40 && starting_y < height - TOTAL_HEIGHT && !hasColliedDown()) {
    starting_y += MOVEMENT_SPEED;
  }
  else if(keyCode == 37 && starting_x > 0 && !hasColliedRight()) {
    starting_x -= MOVEMENT_SPEED;
  }
  else if(keyCode == 39 && starting_x < width - TOTAL_WIDTH && !hasColliedLeft()) {
    starting_x += MOVEMENT_SPEED;
  }
  //Debugging
  else {
    
    //left up right down
    // 37  38 39    40
  }
  //System.out.println("No way jose " + key + " " + keyCode + " " + starting_x + " " + starting_y + " Has collided: " + hasCollided(currentPoints, TOTAL_WIDTH, TOTAL_HEIGHT));
}