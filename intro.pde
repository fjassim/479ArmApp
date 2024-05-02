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
  learn.moveTo(280,360);
  learn.setText("LEARN");
  learn.addEventHandler(this,"startGame");
  learn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  learn.setTextBold();
  quiz.moveTo(280,420);
  quiz.setText("QUIZ MYSELF");
  quiz.addEventHandler(this,"loadLeaderboard");
  quiz.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  quiz.setTextBold();
  pushStyle();
}

public void startGame(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="learn";
    game1.restart();
    println("game started\n");
  }
}

public void bicep(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="bicep";
    game1.restart();
    println("bicep\n");
  }
}

public void loadLeaderboard(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="quiz";
    println("load quiz page\n");
  }
}
