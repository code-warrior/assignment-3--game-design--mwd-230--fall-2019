void drawCreature () {
  noStroke();
  fill(173, 216, 230);
  rect(creatureTopLeftCorner[X], creatureTopLeftCorner[Y], CAT_WIDTH, CAT_WIDTH);
}

void moveCreature (int direction) {
  switch(direction) {
    case UP: {
      creaturesTopEdge = (creatureTopLeftCorner[Y] - MOVE_FACTOR);
      creaturesLeftEdge = (creatureTopLeftCorner[X]);
      creaturesRightEdge = (creatureTopLeftCorner[X] + CAT_WIDTH);

      if (collisionOccursWhenCreatureIsMoved(UP)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[Y] -= MOVE_FACTOR;
        drawCreature();
      }

      break;
    }

    case RIGHT: {
      creaturesTopEdge = (creatureTopLeftCorner[Y]);
      creaturesRightEdge = (creatureTopLeftCorner[X] + CAT_WIDTH + MOVE_FACTOR);
      creaturesBottomEdge = (creatureTopLeftCorner[Y] + CAT_HEIGHT);

      if (collisionOccursWhenCreatureIsMoved(RIGHT)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[X] += MOVE_FACTOR;
        drawCreature();
      }

      break;
    }

    case DOWN: {
      creaturesBottomEdge = (creatureTopLeftCorner[Y] + CAT_HEIGHT + MOVE_FACTOR);
      creaturesLeftEdge = (creatureTopLeftCorner[X]);
      creaturesRightEdge = (creatureTopLeftCorner[X] + CAT_WIDTH);

      if (collisionOccursWhenCreatureIsMoved(DOWN)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[Y] += MOVE_FACTOR;
        drawCreature();
      }

      break;
    }

    case LEFT: {
      creaturesTopEdge = (creatureTopLeftCorner[Y]);
      creaturesLeftEdge = (creatureTopLeftCorner[X] - MOVE_FACTOR);
      creaturesBottomEdge = (creatureTopLeftCorner[Y] + CAT_HEIGHT);

      if (collisionOccursWhenCreatureIsMoved(LEFT)) {
        crashSound.play();
      } else {
        creatureTopLeftCorner[X] -= MOVE_FACTOR;
        drawCreature();
      }

      break;
    }
  }
}
