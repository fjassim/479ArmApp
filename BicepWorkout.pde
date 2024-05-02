
void bicepWorkoutDraw(){
  int sets = 0;
  int reps = 0;

  
   pushStyle();
  background(256,256,256);
  fill(0);
  
  textAlign(CENTER);
  text("Bicep Curl",350,80);
  image(bicep,200,100, 300, 300);

  text("Sets", width/4, height/2 + 160);
  // Text for "Reps"
  text("Reps", width*3/4, height/2 + 160);
  
  text(sets, width/4, height /2 + 220);
  text(reps, width *3/4, height /2 + 220);
  
  backBtn.moveTo(20,50);
  backBtn.setText("Return Home");
  backBtn.addEventHandler(this,"goHome");
  backBtn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  backBtn.setTextBold();
}
