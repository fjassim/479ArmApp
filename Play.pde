String Score= "";


void learn_draw(){
  pushStyle();
  background(256,256,256);
  fill(0);
  learn.moveTo(1000,1000);
  quiz.moveTo(1000,1000);
  
   textAlign(CENTER);
  text("Pick an Exercise to Learn",350,80);
  
  w1.moveTo(240,160);
  w1.setText("Bicep Curl");
  w1.addEventHandler(this,"bicep");
  w1.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  w1.setTextBold();
  w2.moveTo(240,260);
  w2.setText("Tricep Pull");
  w2.addEventHandler(this,"tricep");
  w2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  w2.setTextBold();
  w3.moveTo(240,360);
  w3.setText("Music Mode");
  w3.addEventHandler(this,"startGame");
  w3.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  w3.setTextBold();
  
  pushStyle();
  
}
