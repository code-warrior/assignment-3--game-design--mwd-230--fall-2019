//Objects 1 and 2, X and Y position, and Width and Heigh of Rectangle
int[] objectX = {150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400, 410, 420, 430, 440, 450, 460, 470, 480, 490, 500, 600, 610, 620, 630, 640, 650, 660, 670, 680, 690, 700, 710, 720, 730, 740, 750, 760, 770, 780, 790, 800, 810, 820, 830, 840, 850, 860, 870, 880, 890, 900, 910, 920, 930, 940, 950, 960, 970, 980, 990, 1000, 1020, 1030, 1040, 1050, 1060, 1070, 1080, 1090, 1100, 1110, 1120, 1130, 1140, 1150, 1160, 1170, 1180, 1190, 1200, 1210, 1220, 1230, 1240, 1250, 1260, 1270, 1280};
int[] objectY = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400, 410, 420, 430, 440, 450, 460, 470, 480, 490, 500, 600, 610, 620, 630, 640, 650, 660, 670, 680, 690, 700, 710, 720, 730, 740, 750, 760, 770, 780, 790, 800};
int[] objectW = {20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400};
int[] objectH = {20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400};
int[] objectL = new int[5];
int[] objectR = new int[5];
int[] objectT = new int[5];
int[] objectB = new int[5];

//Creating objects in random position each run
void stationaryObjects() {

  for (int i = 0; i < 5; i++) {
    int index1 = int(random(objectX.length));
    int index2 = int(random(objectY.length));
    int index3 = int(random(objectW.length));
    int index4 = int(random(objectH.length));

    objectX[i] = objectX[index1];
    objectY[i] = objectY[index2];
    objectW[i] = objectW[index3];
    objectH[i] = objectH[index4];
  }

  objectL[0] = objectX[0];
  objectL[1] = objectX[1];
  objectL[2] = objectX[2];
  objectL[3] = objectX[3];
  objectL[4] = objectX[4];
  objectR[0] = objectX[0] + objectW[0];
  objectR[1] = objectX[1] + objectW[1];
  objectR[2] = objectX[2] + objectW[2];
  objectR[3] = objectX[3] + objectW[3];
  objectR[4] = objectX[4] + objectW[4];
  objectT[0] = objectY[0];
  objectT[1] = objectY[1];
  objectT[2] = objectY[2];
  objectT[3] = objectY[3];
  objectT[4] = objectY[4];
  objectB[0] = objectY[0] + objectH[0];
  objectB[1] = objectY[1] + objectH[1];
  objectB[2] = objectY[2] + objectH[2];
  objectB[3] = objectY[3] + objectH[3];
  objectB[4] = objectY[4] + objectH[4];
}

void obstacles(){
  rect(objectX[0],objectY[0],objectW[0],objectH[0]);
  rect(objectX[1],objectY[1],objectW[1],objectH[1]);
  rect(objectX[2],objectY[2],objectW[2],objectH[2]);
  rect(objectX[3],objectY[3],objectW[3],objectH[3]);
  rect(objectX[4],objectY[4],objectW[4],objectH[4]);
}
