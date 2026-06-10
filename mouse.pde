void mouseReleased(){
   if (mode==INTRO){
    introClicks();
  } else if (mode==GAME){
    vy=-10;
  } else if (mode==PAUSE){
    mode=GAME;
  } else if (mode==GAMEOVER){
    reset();
    mode=INTRO;
  } else if (mode==OPTIONS){
    optionClicks();
  }
}
