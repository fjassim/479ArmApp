void intro_draw(){
  background(256,256,256); // RGB values for light blue
  textSize(45);
  
  fill(0,0,170);
  textAlign(CENTER);
  text("FitBot",350,80);
  w1.moveTo(1000,1000);
  w2.moveTo(1000,1000);
  w3.moveTo(1000,1000);
  
  //GButton startBtn;
  image(snakeImg,250,130, 200, 200);
  startBtn.moveTo(280,360);
  startBtn.setText("LEARN");
  startBtn.addEventHandler(this,"startGame");
  startBtn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  startBtn.setTextBold();
  leaderboard.moveTo(280,420);
  leaderboard.setText("QUIZ MYSELF");
  leaderboard.addEventHandler(this,"loadLeaderboard");
  leaderboard.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  leaderboard.setTextBold();
  pushStyle();
}

public void startGame(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="Play";
    game1.restart();
    println("game started\n");
  }
}

public void loadLeaderboard(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="Leaderboard";
    println("load leaderboard\n");
  }
}
