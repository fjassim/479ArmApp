import org.gicentre.utils.spatial.*;
import org.gicentre.utils.network.*;
import org.gicentre.utils.network.traer.physics.*;
import org.gicentre.utils.geom.*;
import org.gicentre.utils.move.*;
import org.gicentre.utils.stat.*;
import org.gicentre.utils.gui.*;
import org.gicentre.utils.colour.*;
import org.gicentre.utils.text.*;
import org.gicentre.utils.*;
import org.gicentre.utils.network.traer.animation.*;
import org.gicentre.utils.io.*;

import gifAnimation.*;
import java.util.*;
import g4p_controls.*;

import processing.serial.*;
import g4p_controls.GButton;
GButton learn;
GButton quiz;
GButton w1;
GButton w2;
GButton w3;
GButton ready;
GButton backBtn;
GButton muscleActivity;
GButton endActivity;

Serial myPort;
String tab = "intro";
PImage snakeImg;
PImage trophyImg;
PImage bicep;
PImage tricep;
PImage bicepExtended;
Oracle ourOracle;

//Player snake= new Player();
//eatables food = new eatables();
Game game1= new Game();
void setup(){
  ourOracle= new Oracle();
  graph_setup();
  learn= new GButton(this,280,360,160,60);
  quiz = new GButton(this, 280,420,160,60);
  w1= new GButton(this,240,160,230,80);
    w2 = new GButton(this, 240,260,230,80); 
  w3 = new GButton(this, 240,360,230,80); 
  ready=new GButton(this,250,200, 230, 80);
  backBtn = new GButton(this, 200, 320, 190, 40);
  muscleActivity= new GButton(this, 200, 320, 100, 40);
  endActivity= new GButton(this, 200, 320, 100, 40);
  endActivity.setText("End Activity");
  endActivity.addEventHandler(this,"endLesson") ; 
  muscleActivity.setText("Muscle Activity");
  
    backBtn.setText("<Return Home");
  backBtn.addEventHandler(this,"goHome");
   muscleActivity.addEventHandler(this,"showGraph");
  backBtn.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  backBtn.setTextBold();
  snakeImg = loadImage("OIP.jpg");
  trophyImg = loadImage("trophy.png");
  bicep=loadImage("Extended_Arm.png");
  bicepExtended = loadImage("Horizontally_Extended_Arm.png");
  tricep=loadImage("Tricep_Pull_Arm.png");
  size(700,700);
  background(255);
  for(var i: Serial.list()){
    println(i);
  }
   myPort = new Serial(this,Serial.list()[2],9600);
  myPort.bufferUntil('\n');
}

void draw(){
  w1.moveTo(1000,1000);
  w2.moveTo(1000,1000);
  w3.moveTo(1000,1000);
   learn.moveTo(1000,1000);
  quiz.moveTo(1000,1000);
  ready.moveTo(1000,1000);
  endActivity.moveTo(1000, 1000);
  muscleActivity.moveTo(1000, 1000);
  if(tab=="intro"){
    intro_draw();
  } else if(tab=="learn"){
    learn_draw();
  } else if(tab=="Leaderboard"){
    //leaderboard_draw();
  }
  else if (tab == "bicep"){
    
    bicepDraw();
  }
  else if (tab == "tricepLearn"){
    tricepLearnDraw();
  }
  else if (tab == "tricepWorkout"){
    tricepWorkoutDraw();
  }
  else if (tab == "bicepWorkout"){
    bicepWorkoutDraw();
  }
  else if (tab =="bicepquiz"){
    bicepQuizDraw();
  }else if(tab=="quiz"){
    quizDraw();
  } else if(tab=="tricep"){
    tricepDraw();
  }
  else if(tab=="bicepend"){
    bicepEndDraw();
  }
  else if(tab=="tricepend"){
    tricepEndDraw();
  }
  
}
void serialEvent(Serial myPort){
  println("Reading values");
  int flexReading;
  int muscleReading;
  String tempval = myPort.readStringUntil('\n');
  tempval= tempval.trim();
  if (tempval.contains("M:")){
      println("here");
     int startInd= 2;
     int endInd= tempval.lastIndexOf("F:"); 
    
     muscleReading = Integer.valueOf(tempval.substring(startInd, endInd)); 
     flexReading= Integer.valueOf(tempval.substring(endInd+2)); 
     if(isFlexing){
      muscleValues.add(muscleReading);
      text("Getting readings...", 400, 400);
    }
    if (tab=="bicepWorkout"){
      updateSensorValues(flexReading, muscleReading);
      graph_serialEvent(muscleReading);
    }
  }
  
  
  
  
}
