void quizEndDraw(){
  pushStyle();
  background(256,256,256);
  fill(0);
  
  textAlign(CENTER);
  
  text("Summary",350,80);
  fill(135, 206, 250); // Light 
   
  rect(50, 100, width - 100, 40);
  
  rect(50, 145, width - 100, 40);
  
  rect(50, 190, width - 100, 40);
  

  fill(0);
    int temp= reps-1;
    if(temp<0)temp=0;
    float effect= 0;
    if(reps >0) effect= ((float)temp/reps)*100;
   String u="Muscle Activity Cycle: "+ (temp);
   String v= "Reps: "+ reps+"/"+reptoBeat;
   String w = "Workout Effectiveness: "+effect+"%" ;
   
   textSize(30);

  text(u, width/2, 130);
  text(v, width/2, 175);
  text(w, width/2, 220);
  
   backBtn.moveTo(20,50);

    textSize(45);
}
