class Oracle{
  Random rand = new Random();
  int state= 1;//1 is for good, 2 is for bad flexing, 3 is for bad contraction
  String goodmessages[]= {"You are doing good", "Nice Form", "Keep Going", "You've got a few more in you!"};
  String badmessagesflexion[]={"Lock the weight in "};
  String badmessagescontraction[]= {"Maintain full range of motion", "Extend completely"};
  String messagetoShow []= goodmessages;
  String currentMessage= messagetoShow[rand.nextInt(messagetoShow.length )];
  long timer= rand.nextInt(1000);
  
  void setstatus(int o){
    
    if (state!=o){
       
        state=o;
        if(state==1){
          messagetoShow= goodmessages;
        }
        else if(state==2){
          messagetoShow= badmessagesflexion;

        }
        else if(state==3){
          messagetoShow= badmessagescontraction;
        }
       currentMessage= messagetoShow[rand.nextInt(messagetoShow.length )];
       timer= millis();
    }
 
    
  }
  String showMessage(){
    if (millis()-timer>=3000){
       currentMessage= messagetoShow[rand.nextInt(messagetoShow.length )];
       timer= millis();
    }
    return currentMessage;
  }
  
  
  
}
