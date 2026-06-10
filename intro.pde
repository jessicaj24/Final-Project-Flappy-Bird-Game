void intro() {
  background(#A1E3FC);
  fill(0);
  textSize(70);
  text("FLAPPY BIRD", 400, 300);
  tactile(150,400,200,100);
  rect(250, 450, 200, 100);
  tactile(450,400,200,100);
  rect(550, 450, 200, 100);
  fill(#172679);
  textSize(40);
  text("START", 250, 450);
  text("OPTIONS", 550, 450);
  textSize(30);
  text("press space to fly!",400,550);
}

void introClicks() {
  if (mouseX>150 && mouseX<350 && mouseY>400 && mouseY<500) {
    mode = GAME;
    fill(250);
    strokeWeight(5);
    rect(250, 550, 200, 100);
  } else if (mouseX>450 && mouseX<650 && mouseY>400 && mouseY<500) {
    mode = OPTIONS;
    strokeWeight(5);
    rect(550,500,200,100);
  } else {
    strokeWeight(1);
    fill(255);
  }
}
