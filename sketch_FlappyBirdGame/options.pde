void options() {

  background(#A1E3FC);

  fill(0);
  textSize(70);
  text("OPTIONS", 400, 100);
  fill(#C4EFFF);
  tactile(500, 650, 200, 100);
  rect(600, 700, 200, 100);
  textSize(40);
  strokeWeight(1);
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
  
  fill(bird1Color);
  circle(200,550,200);
  
  fill(bird2Color);
  circle(600,550,200);
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
