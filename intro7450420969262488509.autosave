void intro_draw(){
  background(256,256,256); // RGB values for light blue
  textSize(45);
  
  fill(0,0,170);
  textAlign(CENTER);
  text("FitBot",350,80);
  w1.moveTo(1000,1000);
  w2.moveTo(1000,1000);
  w3.moveTo(1000,1000);
  backBtn.moveTo(1000,1000);
  muscleActivity.moveTo(1000,1000);
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

public void goHome(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="intro";
    game1.restart();
    println("Going Home\n");
  }
}

public void tricep(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="tricepLearn";
    game1.restart();
    println("Going to Tricep\n");
  }
}

public void bicep(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="bicep";
    game1.restart();
    start= millis();
    println("bicep\n");
  }
}

public void loadLeaderboard(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab="quiz";
    println("load quiz page\n");
  }
}

public void showGraph(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    showgraph= !showgraph;
    println("executing show graph\n");
  }
}
public void endLesson(GButton button, GEvent event){
  if(event == GEvent.CLICKED){
    tab= "bicepend";
    println("ending current activity\n");
  }
}
