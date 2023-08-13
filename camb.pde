void mousePressed(){
  if(pantalla==0 && shakira(500, 500, 150, 60)){
    pantalla=1;
 } 
 
 if(pantalla==1 && shakira(300, 550, 160, 60)){
   pantalla = 2;
 }
  else if(pantalla==2 && shakira(100, 500, 160, 60)){
   pantalla = 3;
 }
 
  else if (pantalla == 3 && shakira(100, 500, 160, 60)){
   pantalla = 2;
 }
  
  else if(pantalla==2 && shakira(500, 500, 160, 60)){
   pantalla= 4; //4
 }
  else if (pantalla ==4 && shakira(300, 400, 160, 60)){
   pantalla = 5;
  }
   else if (pantalla ==5 && shakira(500, 300, 160, 60)){
   pantalla = 6;
  }
    else if (pantalla == 6 && shakira(500, 100, 160, 60)){
   pantalla = 7;
  }
 else if(pantalla ==6 && shakira(100, 100, 160, 60)){
     pantalla = 8; 
 }
  
  else if(pantalla==8 && shakira(500, 300, 160, 60)){
   pantalla = 9;
  }
  else if(pantalla==9 && shakira(500, 300, 160, 60)){
   pantalla = 10;
  }
  else if(pantalla==9 && shakira(100, 300, 160, 60)){
   pantalla = 7;
  }
   else if(pantalla==12 && shakira(300, 550, 150, 60)){
   pantalla = 13;
  }
  else if(pantalla==10 && shakira(500, 300, 160, 60)){
 pantalla = 11;
  }

   else if (pantalla == 11 && shakira(500, 400, 160, 60)){
   pantalla = 12;
  }
 
    else if(pantalla==12 &&shakira (500, 300, 160, 60)){
   pantalla = 13;
  }
 else if(pantalla==13 && shakira(300, 550, 150, 60)){
   pantalla = 0;
  }
}
