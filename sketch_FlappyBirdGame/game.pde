void game() {
  background(#A1E3FC);
  noStroke();
  fill(255);
  ellipse(140, 190, 100, 90);
  ellipse(220, 200, 100, 100);
  ellipse(175, 250, 50, 60);
  ellipse(120, 230, 90, 90);
  ellipse(100, 180, 80, 80);

  ellipse(550, 80, 80, 80);
  ellipse(490, 70, 70, 70);
  ellipse(530, 130, 100, 80);
  ellipse(600, 100, 80, 80);
  ellipse(620, 60, 80, 60);

  strokeWeight(3);
  stroke(0);
  fill(0);
  if (timer>120) {
    text("3", 400, 200);
  }
  if (timer>90 && timer<120) {
    text("2", 400, 200);
  }
  if (timer>60 && timer<90) {
    text("1", 400, 200);
  }
  if (timer>30 && timer<60) {
    text("GO!", 400, 200);
  }
  if (timer > 0) {
    timer = timer - 1;
  } else {
    bird1y += bird1vy;
    bird1vy += gravity;

    bird2y += bird2vy;
    bird2vy += gravity;

    pipex = pipex - speed;
  }


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
  fill(#CEB000);
  rect(pipex, gapy - gapsize/2 - 400, pipew, 800);
  rect(pipex, gapy + gapsize/2 + 400, pipew, 800);

  fill(0);
  textSize(40);
  text("Score: " + score, width/2, 60);
  if (bird1y < birdd/2 || bird1y > height - birdd/2) {
    mode = GAMEOVER;
    bird1Dead = true;
  }
  if (bird2y < birdd/2 || bird2y > height - birdd/2) {
    mode = GAMEOVER;
    bird2Dead = true;
  }

  if (bird1x + birdd/2 > pipex - pipew/2 && bird1x - birdd/2 < pipex + pipew/2) {
    if (bird1y - birdd/2 < gapy - gapsize/2 || bird1y + birdd/2 > gapy + gapsize/2) {
      mode = GAMEOVER;
      bird1Dead = true;
    }
  }

  if (bird2x + birdd/2 > pipex - pipew/2 && bird2x - birdd/2 < pipex + pipew/2) {
    if (bird2y - birdd/2 < gapy - gapsize/2 || bird2y + birdd/2 > gapy + gapsize/2) {
      mode = GAMEOVER;
      bird2Dead = true;
    }
  }
}

void gameClicks() {
  mode = PAUSE;
}
