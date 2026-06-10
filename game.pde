void game() {
  background(#87CEEB);

  birdy = birdy + vy;
  vy = vy + gravity;

  pipex = pipex - speed;

  if (pipex < -pipew/2) {
    pipex = width + pipew/2;
    gapy = random(200, 600);
    score = score + 1;
  }

  if (birdColor == 1) {
    fill(#FF4444);
  }

  if (birdColor == 2) {
    fill(#FFFF00);
  }

  if (birdColor == 3) {
    fill(#4444FF);
  }

  circle(birdx, birdy, birdd);
  stroke(0);
  circle(birdx, birdy, birdd);

  fill(0, 180, 0);
  rect(pipex, gapy - gapsize/2 - 400, pipew, 800);
  rect(pipex, gapy + gapsize/2 + 400, pipew, 800);

  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 60);

  if (birdy < birdd/2 || birdy > height - birdd/2) {
    mode = GAMEOVER;
  }

  if (birdx + birdd/2 > pipex - pipew/2 && birdx - birdd/2 < pipex + pipew/2) {
    if (birdy - birdd/2 < gapy - gapsize/2 || birdy + birdd/2 > gapy + gapsize/2) {
      mode = GAMEOVER;
    }
  }
}
