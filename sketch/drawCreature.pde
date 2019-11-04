void drawCreature(int start_x, int start_y) {
  if (keyPressed == true) {
    image(character[frameCount%8], start_x, start_y, creatureW, creatureH);
    frameRate(25);
  } else {
    image(character[frameCount%1], start_x, start_y, creatureW, creatureH);
  }
  ////Head
  //fill(65,100,218);
  //ellipse(point_x+250+HEAD_WIDTH_HEIGHT/2, point_y + BODY_HEIGHT/7 - HEAD_WIDTH_HEIGHT/5, HEAD_WIDTH_HEIGHT, HEAD_WIDTH_HEIGHT);

  ////Eye
  //fill(5);
  //rect(point_x+335,point_y-50, 5, 40, 20);

  ////Body
  //fill(150);
  //ellipse(point_x+45, point_y, BODY_WIDTH, BODY_HEIGHT);
  //ellipse(point_x+110, point_y, BODY_WIDTH, BODY_HEIGHT);
  //ellipse(point_x+175, point_y, BODY_WIDTH, BODY_HEIGHT);
  //ellipse(point_x+240,point_y,BODY_WIDTH,BODY_HEIGHT);
}
