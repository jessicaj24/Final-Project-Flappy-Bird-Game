void gameover() {
  background(#A1E3FC);
  fill(0);
  textSize(70);
  text("GAME OVER", 400, 330);
  textSize(40);
  text("Score: " + score, 400, 430);
  text("click to try again", 400, 550);
}

void reset() {
  birdy = 400;
  vy = 0;
  pipex = width;
  gapy = random(200, 600);
  score = 0;
}
