String Score= "";
long interval = 500;
long start= 0;
//class CheckerSquare{
//  float x,y;
//  int size;
  
//  CheckerSquare(float x, float y, int size){
//    this.x = x;
//    this.y = y;
//    this.size = size;
//  }
//}

//ArrayList<CheckerSquare> squares;
//void createSquares(){
//  //size(400,400);
//  squares = new ArrayList<CheckerSquare>();
//  int squareSize=50;
//  for(int i = 0; i < height; i+=squareSize){
//    for(int j = 0; j <width; j+=squareSize){
//      CheckerSquare square = new CheckerSquare(j,i,squareSize);
//      squares.add(square);
//    }
//  }
  
//}



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
  w2.addEventHandler(this,"startGame");
  w2.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  w2.setTextBold();
  w3.moveTo(240,360);
  w3.setText("Music Mode");
  w3.addEventHandler(this,"startGame");
  w3.setLocalColorScheme(GCScheme.BLUE_SCHEME);
  w3.setTextBold();
  
  pushStyle();
  
}
