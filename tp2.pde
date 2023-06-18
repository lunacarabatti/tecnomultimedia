//Carabatti Luna
//tp2 comision 1
//https://youtu.be/SBRkEih5znI
PImage luna;

void setup() {
  size (800, 400);
  luna=loadImage("luna.jpg");
  fill(255);//fondo
  rect(400, 0, 400, 800);

}

void draw() {
  if(mousePressed == true) {
    float mx = map(mouseX, 400, width,250, 150 );
    background(mx, 220 ); 
  
   }
  float ancho = width / 10;
  float alto = height / 5;
  
  for (int a = 0; a < 3; a++) { 
    for (int b = 0; b < 3; b++) {
      float centerX = width / 2 + ancho * (2 * b + 1); 
      float centerY = alto * (2 * a + 1);
      Rombos(ancho * 2, alto * 2, centerX, centerY);
      
   }
  }
   float anchor = width / 10 ;  // segundo rombo
   float altor = height /5;

   for (int a = 0; a < 3; a++) { 
    for (int b = -1; b < 4; b++) {
     float centerX = width / 2 + anchor * (2* b + 2); 
     float centerY = altor * (2 * a + 1);
    Rombos(anchor * 2, altor * 2, centerX, centerY);
    
   }
  }

  image(luna ,0, 0, 400, 400);
 }
  void Rombos(float width, float height, float centerX, float centerY) {
  fill(220); 
  fill(0,2); 
  float ancho = width / 2;
  float alto = height / 2;

  quad(centerX, centerY - alto, // Punto superior
       centerX + ancho, centerY,  // Punto derecho
       centerX, centerY + alto, // Punto inferior
       centerX - ancho, centerY); // Punto izquierdo
      
}
 
