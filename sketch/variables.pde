/**
 * Constants representing ASCII code values
 */
final int S_KEY = 83;
final int F_KEY = 70;

int start_x = 0;
int start_y = 670;
int HEAD_WIDTH_HEIGHT = 120;
int BODY_HEIGHT = 100;
int BODY_WIDTH = 100;
int SPEED = 10;
int previous_key_press = 0;

int creatureW =120;
int creatureH = 140;

int creatureL = start_x;
int creatureR = start_x + creatureW;
int creatureT = start_y;
int creatureB = 800;

PImage bg;
PImage[] character = new PImage[8];
