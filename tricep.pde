int reptoBeat= 10;
void tricepDraw(){
  if(quiztimer.second()<58){
    
    background(256,256,256); // RGB values for light blue
    textSize(45);
    
    fill(0,0,170);
    textAlign(CENTER);
    text("Tricep Pull",350,80);
    w1.moveTo(1000,1000);
    w2.moveTo(1000,1000);
    w3.moveTo(1000,1000);
     backBtn.moveTo(20,50);
    fill(255, 0, 0);
    text(quiztimer.hour() + ":" + nf(quiztimer.minute(), 2) + ":" +
     nf(quiztimer.second(), 2) + ":" + nf(quiztimer.millis(), 3), width/2, 400);
     fill(0,0,170);
     
    text("Reps to beat: "+(reptoBeat-reps), 350,450 );
    //GButton startBtn;
    image(tricep,250,130, 200, 200);
  }
  else{
    quiztimer.pause();
    tab="quizend";
  }
}
