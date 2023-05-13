//Luna Carabatti
//tp1 comision 1

float contador;
PImage sanmartin1;
PImage sanmartin2;
PImage sanmartin3;
int posX;
int posY3;
int posY2;
int posX2;
PFont fuente;

void setup () {
  size( 640, 480);
  sanmartin1= loadImage("san martin 1.jpg");
  sanmartin2= loadImage("san martin 2.jpg");
  sanmartin3= loadImage("san martin 3.jpg");
  fuente = loadFont("BodoniBT-Book-48.vlw");
  textFont(fuente, 35);
  textAlign(CENTER, CENTER);
  textSize(60);
  posX= 640;
  posY3= 0;
  posY2= 480;
  posX2 = 640; 
}

void draw() {

  contador = contador + 1;
  println("mouseX" + mouseX);
  println("mouseY" + mouseY);

  if (contador < 300) {
    image(sanmartin1, 0, 0, 640, 480);
    fill(255);
    textSize(60);
    text("Bienvenidos a San Martin de los andes", posX, height/3);
    posX = posX - 2;
  }

  if (contador > 300 && contador < 580) {
    image(sanmartin2, 0, 0, 640, 480);
    fill(255);
    textSize(60);
    text("un hermoso lugar para \n vacacionar", posX2, posY2);
    posY2 = posY2 - 2;
    posX2 = posX2 - 2;
  }

  if (contador > 580 && contador < 900) {
    image(sanmartin3, 0, 0, 640, 480);
    fill(255);
    textSize(60);
    text("¡los esperamos!", width/2, posY3);
    posY3 = posY3 + 2;
    fill(120);
    rect(550, 425, 100, 100);
    fill(255);
    textSize(20);
    text("reinicio", 600, 450);
    
  }
}

void mousePressed(){
   if(mouseX >550 && mouseX < 640 && mouseY > 425 && mouseY < 480){
   posX = 640;
   posX2 = 640;
   posY2 = 480;
   posY3 = 0;
   contador = 0;
}
  
}
