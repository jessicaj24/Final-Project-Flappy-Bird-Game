void game() {
  background(#87CEEB);

  bird1y += bird1vy;
  bird1vy += gravity;

  bird2y += bird2vy;
  bird2vy += gravity;

  pipex = pipex - speed;

  if (pipex < -pipew/2) {
    pipex = width + pipew/2;
    gapy = random(200, 600);
    score = score + 1;
  }

  if (bird1Color == 1) {
    fill(#FF037D);
  }

  if (bird1Color == 2) {
    fill(#FF74B7);
  }

  if (bird1Color == 3) {
    fill(#A50050);
  }

  circle(bird1x, bird1y, birdd);

  if (bird2Color == 1) {
    fill(#008175);
  }

  if (bird2Color == 2) {
    fill(#76FFF2);
  }

  if (bird2Color == 3) {
    fill(#03FFE8);
  }

  circle(bird2x, bird2y, birdd);
  stroke(0);
  fill(0, 180, 0);
  rect(pipex, gapy - gapsize/2 - 400, pipew, 800);
  rect(pipex, gapy + gapsize/2 + 400, pipew, 800);

  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 60);

  if (bird1y < birdd/2 || bird1y > height - birdd/2 || bird2y < birdd/2 || bird2y > height - birdd/2) {
    reset();
  }

  if (bird1x + birdd/2 > pipex - pipew/2 && bird1x - birdd/2 < pipex + pipew/2) {
    if (bird1y - birdd/2 < gapy - gapsize/2 || bird1y + birdd/2 > gapy + gapsize/2) {
      mode = GAMEOVER;
    }
  }
  if (bird2x + birdd/2 > pipex - pipew/2 && bird2x - birdd/2 < pipex + pipew/2) {
    if (bird2y - birdd/2 < gapy - gapsize/2 || bird2y + birdd/2 > gapy + gapsize/2) {
      mode = GAMEOVER;
    }
  }
}
