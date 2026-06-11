int mode;
final int INTRO=0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;

float bird1x, bird1y, bird1vy;
float bird2x, bird2y, bird2vy;
float birdd;
float gravity;

float pipex, pipew;
float gapy, gapsize;
float speed;

int score;
int bird1Color;
int bird2Color;
int timer=150;

boolean bird1Dead = false;
boolean bird2Dead = false;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  gravity = 0.3;

  pipex = width;
  pipew = 100;
  gapy = 400;
  gapsize = 290;
  speed = 2;

  score = 0;
  bird1Color = 1;
  bird2Color = 1;
  
  bird1x = 200;
  bird2x = 200;

  bird1y = 350;
  bird2y = 450;

  bird1vy = 0;
  bird2vy = 0;
  
  birdd=50;
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
