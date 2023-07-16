//Luna Carabatti
//tp3 comision'1
//relato "la carretera"

int [] pantallas = new int [12];
int n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11;
PImage foto1,foto2,foto3,foto4,foto5,foto6,foto7,foto8,foto9,foto10,foto11,foto12;
int mn;
int na;
void setup(){
  
  
  n1=1;
  n2=2;
  n3=3;
  n4=4;
  n5=5;
  n6=6;
  n7=7;
  n8=8;
  n9=9;
  n10=10;
  n11=11;
size(600,600);

foto1=loadImage("img1.jpg");
foto1.resize(600,600);
foto2=loadImage("img2.jpg");
foto2.resize(600,600);
foto3=loadImage("img3.jpg");
foto3.resize(600,600);
foto4=loadImage("img4.jpg");
foto4.resize(600,600);
foto5=loadImage("img5.jpg");
foto5.resize(600,600);
foto6=loadImage("img6.jpg");
foto6.resize(600,600);
foto7=loadImage("img7.jpg");
foto7.resize(600,600);
foto8=loadImage("img8.jpeg");
foto8.resize(600,600);
foto9=loadImage("img9.jpeg");
foto9.resize(600,600);
foto10=loadImage("img10.jpeg");
foto10.resize(600,600);
foto11=loadImage("img11.jpg");
foto11.resize(600,600);

for(int i=0;i<12;i++){
pantallas[i] =0;
 }
}


void draw(){

println(pantallas);
na=mn;
println(na);

 if(pantallas[0]==0){
   
  
 planillabase("pantalla1",foto1);
 }else if(pantallas[1]==0){
  planillabase("pantalla2",foto2);
 }else if(pantallas[2]==0){
 planillabase("pantalla3",foto3);
  }else if(pantallas[3]==0){
 planillabase("pantalla4",foto4);
 }else if(pantallas[4]==0){
 planillabase("pantalla5",foto5);
 }else if(pantallas[5]==0){
 planillabase("pantalla6",foto6);
 }else if(pantallas[6]==0){
 planillabase("pantalla7",foto7);
 }else if(pantallas[7]==0){
 planillabase("pantalla8",foto8);
 }else if(pantallas[8]==0){
 planillabase("pantalla9",foto9);
 }else if(pantallas[9]==0){
 planillabase("pantalla10",foto10);
 }else if(pantallas[10]==0){
 planillabase("pantalla11",foto11);
 }else if(pantallas[11]==0){
planillabase("pantalla12",foto12);
 
 }



}


void mousePressed(){

if(pantallas[0]==0&& chequebotoncuadrado(250,300,250,300,n1)){
}

else if(pantallas[1]==0 && chequebotoncuadrado(250,300,250,300,n2)){ 
}
else if(pantallas[2]==0 && chequebotoncuadrado(250,300,250,300,n3)){ 
}
else if(pantallas[3]==0 && chequebotoncuadrado(250,300,250,300,n4)){ 
}
else if(pantallas[4]==0 && chequebotoncuadrado(250,300,250,300,n5)){ 
}
else if(pantallas[5]==0 && chequebotoncuadrado(250,300,250,300,n6)){ 
}
else if(pantallas[6]==0 && chequebotoncuadrado(250,300,250,300,n7)){ 
}
else if(pantallas[7]==0 && chequebotoncuadrado(250,300,250,300,n8)){ 
}
else if(pantallas[8]==0 && chequebotoncuadrado(250,300,250,300,n9)){ 
}
else if(pantallas[9]==0 && chequebotoncuadrado(250,300,250,300,n10)){ 
}
else if(pantallas[10]==0 && chequebotoncuadrado(250,300,250,300,n11)){ 
}
else if(pantallas[11]==0 && chequebotoncuadrado(250,300,250,300,na)){ 
 }
 if(pantallas[11]==0&& chequebotoncuadrado(250,300,250,300,n0)){
}
}

void planillabase(String mitexto, PImage lafoto){
  String eltexto=mitexto;
  PImage mifoto= lafoto;
  image(mifoto,0,0);
 textSize(30);
 text(eltexto,220,350);
 fill(255);
 rect(250,250,50,50);
 }
 
boolean chequebotoncuadrado(int posicionx1, int posicionx2, int posiciony1, int posiciony2, int en){
 int miposicionx1= posicionx1;
 int miposicionx2= posicionx2;
 
int  miposiciony1= posiciony1;
int miposiciony2= posiciony2;

mn=en;

for(int i=0;i<12;i++){
  pantallas[i]=1;
    pantallas[mn]=0;
}

 return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);
 }
