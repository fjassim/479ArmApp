int[] randomArray = new int[4];
PImage bcmg;
boolean clicked = false;
int currentTab = 0; // Index of the current tab
int startTime;
int[] tabDurations = {7000, 7000, 7000, 7000}; // Durations for each tab in milliseconds




void quizDraw(){
    startTime = millis(); // Record the start time for the first tab

   background(256,256,256); // RGB values for light blue
  textSize(45);
  
  fill(0,0,170);
  textAlign(CENTER);
  text("Take a Quiz and Test Yourself!",350,80);
   learn.moveTo(1000,1000);
  quiz.moveTo(1000,1000);
  
  textSize(20);
  text("There will be 3 randomly chosen exercises that you must do\n correctly within 21 seconds. Ready?", 350, 180);
  ready.moveTo(250,240);
  ready.setText("Start");
  ready.addEventHandler(this,"startQuiz");
  ready.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  ready.setTextBold();
}

public void startQuiz(GButton button, GEvent event){
  println("started quiz\n");
  if(event == GEvent.CLICKED){
    genExercises();
    for(int i = 0; i<4; i++){
      draw_exercise(randomArray[i]);
    }
    text("Done with exercises!\n", 350,180);
    //tab="bicepquiz";
  }
  
  
}

void genExercises(){
  for (int i = 0; i < randomArray.length; i++) {
    // Generate a random value between 1 and 2
    randomArray[i] = (int) random(1, 3);
    println("egenerated nums:\n");
    println(randomArray[i]);
  }
}

void draw_exercise(int i){
        startTime = millis();

  if(i == 1){
    //bicep curl
    println("bicep curl\n");
    tab="bicepquiz";
  } else if(i == 2){
    println("tricep 2\n");
    tab="tricep";
  } else if(i == 3){
    println("bicep 3\n");
    tab="bicepquiz";
  } 
  
  if (millis() - startTime >= tabDurations[currentTab]) {
    // Move to the next tab
    return;
    // Reset the start time for the next tab
  }
}


  
