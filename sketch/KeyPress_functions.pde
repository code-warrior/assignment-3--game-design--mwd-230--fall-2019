//KeyPress... Allows users to use their arrow keys to move creature
void keyPressed() {
  if (key == CODED) {
    if (keyCode == 37 && start_x > 0) { //Left Arrow
      if (((creatureL == objectR[0]) && (creatureB > objectT[0] && creatureT < objectB[0])) || ((creatureL == objectR[1]) && (creatureB > objectT[1] && creatureT < objectB[1])) || ((creatureL == objectR[2]) && (creatureB > objectT[2] && creatureT < objectB[2])) || ((creatureL == objectR[3]) && (creatureB > objectT[3] && creatureT < objectB[3])) || ((creatureL == objectR[4]) && (creatureB > objectT[4] && creatureT < objectB[4]))) {
        start_x -= 0;
      } else {
        start_x -= SPEED;
        creatureL -= SPEED;
        creatureR -= SPEED;
      }
    } else if (keyCode == 38 && start_y >= 10) { //Up Arrow
      if (((creatureT == objectB[0]) && (creatureL < objectR[0] && creatureR > objectL[0])) || ((creatureT == objectB[1]) && (creatureL < objectR[1] && creatureR > objectL[1])) || ((creatureT == objectB[2]) && (creatureL < objectR[2] && creatureR > objectL[2])) || ((creatureT == objectB[3]) && (creatureL < objectR[3] && creatureR > objectL[3])) || ((creatureT == objectB[4]) && (creatureL < objectR[4] && creatureR > objectL[4]))) {
        start_y -= 0;
      } else {
        start_y -= SPEED;
        creatureT -= SPEED;
        creatureB -= SPEED;
      }
    } else if (keyCode == 39 && start_x < width - creatureW) { //Right Arrow
      if (((creatureR == objectL[0]) && (creatureB > objectT[0] && creatureT < objectB[0])) || ((creatureR == objectL[1]) && (creatureB > objectT[1] && creatureT < objectB[1])) || ((creatureR == objectL[2]) && (creatureB > objectT[2] && creatureT < objectB[2])) || ((creatureR == objectL[3]) && (creatureB > objectT[3] && creatureT < objectB[3])) || ((creatureR == objectL[4]) && (creatureB > objectT[4] && creatureT < objectB[4]))) {
        start_x -= 0;
      } else {
        start_x += SPEED;
        creatureR += SPEED;
        creatureL += SPEED;
      }
    } else if (keyCode == 40 && start_y < height - creatureH + 6) { //Down Arrow
      if (((creatureB == objectT[0]) && (creatureL < objectR[0] && creatureR > objectL[0])) || ((creatureB == objectT[1]) && (creatureL < objectR[1] && creatureR > objectL[1])) || ((creatureB == objectT[2]) && (creatureL < objectR[2] && creatureR > objectL[2])) || ((creatureB == objectT[3]) && (creatureL < objectR[3] && creatureR > objectL[3])) || ((creatureB == objectT[4]) && (creatureL < objectR[4] && creatureR > objectL[4]))) {
        start_y += 0;
      } else {
        start_y += SPEED;
        creatureT += SPEED;
        creatureB += SPEED;
      }
    }
  }
  println("C Top: " + creatureT);
  println("C Bottom: " + creatureB);
  println("C Left: " + creatureL);
  println("C Right: " + creatureR);
  println("O Top: " + objectT[0]);
  println("O Top2: " + objectT[1]);
  println("O Bottom: " + objectB[0]);
  println("O Bottom2: " + objectB[1]);
  println("O Left: " + objectL[0]);
  println("O Left2: " + objectL[1]);
  println("O Right: " + objectR[0]);
  println("O Right2: " + objectR[1]);
}
