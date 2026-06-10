int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;

float birdx, birdy, birdd;
float vy, gravity;

float pipex, pipew;
float gapy, gapsize;
float speed;

int score;
int birdColor;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER,CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  text("START",250,550);
  text("OPTIONS",550,550);
  
  birdx = 200;
  birdy = 400;
  birdd = 50;

  vy = 0;
  gravity = 0.3;

  pipex = width;
  pipew = 100;
  gapy = 400;
  gapsize = 290;
  speed = 2;

  score = 0;
  birdColor=1;
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error:Mode="+ mode);
  }
}
