void keyPressed() {
  if (mode == GAME) {
    if (key == 'a') {
      bird1vy = -7;
      click.rewind();
      click.play();
    }
    if (key == 'l') {
      bird2vy = -7;
      click.rewind();
      click.play();
    }
  }
}
