void options() {

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
  stroke(0);
  fill(0);
  textSize(70);
  text("OPTIONS", 400, 100);
  fill(#C4EFFF);
  tactile(500, 650, 200, 100);
  rect(600, 700, 200, 100);
  textSize(40);
  strokeWeight(3);
  fill(#172679);
  text("CONFIRM", 600, 700);
  fill(0);
  text("Bird 1", 200, 350);
  fill(#FF037D);
  rect(100, 250, 100, 100);

  fill(#FF74B7);
  rect(200, 250, 100, 100);

  fill(#A50050);
  rect(300, 250, 100, 100);
  
  fill(0);
  text("Bird 2", 600, 350);
  fill(#008175);
  rect(500, 250, 100, 100);

  fill(#76FFF2);
  rect(600, 250, 100, 100);

  fill(#03FFE8);
  rect(700, 250, 100, 100);

  if (bird1Color == 1) {
    fill(#FF037D);
    circle(200,500,200);
  }

  if (bird1Color == 2) {
    fill(#FF74B7);
    circle(200,500,200);
  }

  if (bird1Color == 3) {
    fill(#A50050);
    circle(200,500,200);
  }
  if (bird2Color == 1) {
    fill(#008175);
    circle(600,500,200);
  }

  if (bird2Color == 2) {
    fill(#76FFF2);
    circle(600,500,200);
  }

  if (bird2Color == 3) {
    fill(#03FFE8);
    circle(600,500,200);
  }
}

void optionClicks() {
  if (mouseX>500 && mouseX<700 && mouseY>650 && mouseY<750) {
    mode = INTRO;
    fill(250);
    strokeWeight(5);
    rect(600, 700, 200, 100);
  }
  if (mouseX>50 && mouseX<150 && mouseY>200 && mouseY<300) {
    bird1Color = 1;
  }
  if (mouseX>150 && mouseX<250 && mouseY>200 && mouseY<300) {
    bird1Color = 2;
  }
  if (mouseX>250 && mouseX<350 && mouseY>200 && mouseY<300) {
    bird1Color = 3;
  }
  if (mouseX>450 && mouseX<550 && mouseY>200 && mouseY<300) {
    bird2Color = 1;
  }
  if (mouseX>550 && mouseX<650 && mouseY>200 && mouseY<300) {
    bird2Color = 2;
  }
  if (mouseX>650 && mouseX<750 && mouseY>200 && mouseY<300) {
    bird2Color = 3;
  }
}
