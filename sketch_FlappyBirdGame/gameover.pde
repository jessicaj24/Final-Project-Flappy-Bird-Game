void gameover() {
  theme.pause();
  if (gameoverStarted == false) {
    gameover.rewind();
    gameover.play();
    gameoverStarted = true;
  }
  background(#A1E3FC);
  cloud(cloud1x, 200);
  cloud(cloud2x, 100);
  cloud1x = cloud1x + 0.8;
  cloud2x = cloud2x + 0.8;
  if (cloud1x > width + 150) {
    cloud1x = -150;
  }

  if (cloud2x > width + 150) {
    cloud2x = -150;
  }
  strokeWeight(3);
  stroke(0);
  fill(0);
  textSize(70);
  text("GAME OVER", 400, 330);
  fill(#172679);
  textSize(30);
  text("Score: " + score, 400, 450);
  text("click to try again", 400, 500);
  fill(0);
  textSize(45);
  if (bird1Dead == true && bird2Dead == true) {
    text("Tie!", 400, 600);
  } else if (bird1Dead == true) {
    text("Bird 2 Wins!", 400, 600);
  } else if (bird2Dead == true) {
    text("Bird 1 Wins!", 400, 600);
  }
  if (score < 3) {
    image(bronze, 400, 150);
  } else if (score < 5) {
    image(silver, 400, 150);
  } else {
    image(gold, 400, 150);
  }
}

void reset() {
  theme.rewind();
  countdown.pause();
  countdown.rewind();
  countdownStarted = false;
  gameStarted = false;
  gameover.pause();
  gameover.rewind();
  gameoverStarted = false;
  bird1y = 350;
  bird2y = 450;

  bird1vy = 0;
  bird2vy = 0;
  pipex = width;
  gapy = random(200, 600);
  score = 0;
  timer=200;
  bird1Dead = false;
  bird2Dead = false;
}

void cloud(float x, float y) {
  noStroke();
  fill(255);
  ellipse(x+40, y-10, 100, 90);
  ellipse(x+120, y, 100, 100);
  ellipse(x+75, y+50, 50, 60);
  ellipse(x+20, y+30, 90, 90);
  ellipse(x, y-20, 80, 80);
}
