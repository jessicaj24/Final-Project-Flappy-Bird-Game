void gameover() {
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
}

void reset() {
  bird1y = 350;
  bird2y = 450;

  bird1vy = 0;
  bird2vy = 0;
  pipex = width;
  gapy = random(200, 600);
  score = 0;
  timer=160;
  bird1Dead = false;
  bird2Dead = false;
}
