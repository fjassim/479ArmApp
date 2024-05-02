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

Serial myPort;
String tab = "intro";
PImage snakeImg;
PImage trophyImg;
PImage bicep;
PImage tricep;
Random rand = new Random();

//Player snake= new Player();
//eatables food = new eatables();
Game game1= new Game();
void setup(){
  learn= new GButton(this,280,360,160,60);
  quiz = new GButton(this, 280,420,160,60);
  w1= new GButton(this,240,160,230,80);
    w2 = new GButton(this, 240,260,230,80); 
  w3 = new GButton(this, 240,360,230,80); 
  ready=new GButton(this,250,200, 230, 80);

  snakeImg = loadImage("OIP.jpg");
  trophyImg = loadImage("trophy.png");
  bicep=loadImage("Extended_Arm.png");
  tricep=loadImage("Tricep_Pull_Arm.png");
  size(700,700);
  background(255);
   //myPort = new Serial(this,Serial.list()[0],9600);
  //myPort.bufferUntil('\n');
}

void draw(){
  w1.moveTo(1000,1000);
  w2.moveTo(1000,1000);
  w3.moveTo(1000,1000);
   learn.moveTo(1000,1000);
  quiz.moveTo(1000,1000);
  ready.moveTo(1000,1000);
  if(tab=="intro"){
    intro_draw();
  } else if(tab=="learn"){
    learn_draw();
  } else if(tab=="Leaderboard"){
    //leaderboard_draw();
  }
  else if (tab =="bicepquiz"){
    bicepDraw();
  }else if(tab=="quiz"){
    quizDraw();
  } else if(tab=="tricep"){
    tricepDraw();
  }
  
  
}
void serialEvent(Serial myPort){
  
  String tempval = myPort.readStringUntil('\n');
  tempval= tempval.trim();
 
  if (tempval.length()==1){
     println(tempval);
  }
  
}
