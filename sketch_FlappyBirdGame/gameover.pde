void gameover() {
  background(#A1E3FC);
  fill(0);
  textSize(70);
  text("GAME OVER", 400, 330);
  textSize(40);
  text("Score: " + score, 400, 430);
  text("click to try again", 400, 550);
  if (bird1x + birdd/2 > pipex - pipew/2 && bird1x - birdd/2 < pipex + pipew/2) {
    if (bird1y - birdd/2 < gapy - gapsize/2 || bird1y + birdd/2 > gapy + gapsize/2) {
      text("Bird 2 Wins!", 400, 400);
    }
  }
  if (bird2x + birdd/2 > pipex - pipew/2 && bird2x - birdd/2 < pipex + pipew/2) {
    if (bird2y - birdd/2 < gapy - gapsize/2 || bird2y + birdd/2 > gapy + gapsize/2) {
      text("Bird 1 Wins!", 400, 400);
    }
  } else {
    text("Tie!",400,400);
  }
}

void reset() {
  bird1y = 350;
  bird2y = 450;

  bird1vy = 0;
  bird2vy = 0;
  pipex = width;
  gapy = random(200, 600);
  score = 0;
}
