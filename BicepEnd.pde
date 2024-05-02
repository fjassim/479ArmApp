void bicepEndDraw(){
  pushStyle();
  background(256,256,256);
  fill(0);
  
  textAlign(CENTER);
  
  text("Summary",350,80);
  fill(135, 206, 250); // Light 
   
  rect(50, 100, width - 100, 40);
  
  rect(50, 145, width - 100, 40);
  
  rect(50, 190, width - 100, 40);
  
  rect(50, 235, width - 100, 40);
  
  
  rect(50, 280, width - 100, 40);
  
  fill(0);
  
   String u="Muscle Activity Cycle: "+ 0;
   String v= "Reps: "+ reps;
   String w = "Workout Effectiveness"+ 0;
   
  text(u, width/2, 130);
  text(v, width/2, 175);
  text(w, width/2, 220);
  
   backBtn.moveTo(20,50);

  
}
