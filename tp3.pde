//Luna Carabatti
//legajo: 94723/5
//tprec, comision 1
//Video: https://youtu.be/5_VN57mi8e4
int cant = 14;
PImage[]fotos = new PImage [cant];
String [] textos = {"fasf","1La lluvia fresca de la tarde había caído sobre el valle, humedeciendo el maíz en los sembrados de las laderas"," 2Hernando esperaba que cesara la lluvia, para volver al campo, ningún auto había pasado en esa última hora. Era, en verdad, algo muy raro. Durante años no había transcurrido una hora sin que un coche se detuviese",
"3Y de la nada, llegaron los coches. Cientos de coches pasaron y pasaron junto a él, con un incesante ruido de cornetas y bocinas, en la caras de la gente que se amontonaban en los coches, había algo, algo que hundió a Hernando en un profundo silencio.","4Al fin la soledad y el silencio volvieron a la carretera.",
"5Y ahora, completamente solo, paso el último coche. Era verdaderamente algo último. Desde la montaña, camino abajo, bajo la fría llovizna, lanzando grandes nubes de vapor, venía un viejo Ford, con toda la rapidez de que era capaz. Hernando creyó que el coche iba a deshacerse en cualquier momento."," 6y se va por el mismo camino que los demas","7El viejo Ford se detuvo, El radiador hervía furiosamente.",
"8las personas le piden un favor a hernando", "9—¿Nos da un poco de agua? ¡Por favor, señor!", "10Antes de que se marche Hernan pregunta: —¿Qué pasa, señor?  —¿No ha oído?  -No he oído nada, señor —¡La guerra! —gritó el hombre—. ¡Ha empezado la guerra atómica! ¡El fin del mundo!",
"11el coche se puso en marcha y se alejo, mientras tabto Hernan cruzó el campo hasta la casa, y se pregunto —¿A qué llamarán el mundo?", 
"12Director: Luna Carabatti 94723/5      Programador: Luna Carabatti Imagenes: IA / Google Autor: Ray Bradbury"};

int pantalla = 0;


void setup(){
  size (600, 600);
  for (int i=0; i<cant; i++){
 fotos[i] = loadImage( "img"+i+".jpg");
  }
textSize(25);
}
void draw(){
   if(pantalla==0){
    image( fotos [0], 0, 0, 600, 600);
    shashakira (500, 550, 150, 60, "INICIO", 150, 60);
  
   }
 if(pantalla==1 ){
    image( fotos [1], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 150, 550, 170, 50);
    fill(0);
    text (textos [1], 300, 275, 500, 400);
    shashakira (300, 550, 160, 60, "SIGUIENTE", 160, 60);
   }
    if(pantalla==2){
    image( fotos [2], 0, 0, 600, 600);
    fill(255, 250, 255, 100);
    rect( 300, 230, 550, 250, 50);
    fill(0);
    text (textos [2], 300, 325 ,500, 400);
    shashakira(500, 500, 160, 60, "A", 160, 60);
    shashakira(100, 500, 160, 60, "B", 160, 60);
   }
    if( pantalla == 3){
    image( fotos [3], 0, 0, 600, 600);
    fill(255, 255, 400, 100);
    rect( 300, 230, 550, 300, 50);
    fill(0);
    text (textos [5], 300, 300 ,500, 400);
   shashakira(100, 500, 160, 60, "VOLVER", 160, 60);
   }
    if(pantalla==4){
    image( fotos[4], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 150, 500, 300, 50);
    fill(0);
    text (textos [3], 300, 225, 500, 400);
    shashakira (300, 400, 160, 60, "SIGUIENTE", 160, 60);
   }
    if(pantalla==5){
    image( fotos [5], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 70, 500, 120, 50);
    fill(0);
    text (textos [4], 300, 225, 500, 400); 
    shashakira(500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
   if(pantalla==6){
    image( fotos [6], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 430, 560, 300, 50);
    fill(0);
    text (textos [5], 290, 500, 500, 400);
    shashakira(100, 100, 160, 60, "A", 160, 60);
    shashakira(500, 100, 160, 60, "B", 160, 60); // 100 arriba o abajo
   }
     if(pantalla==7){
    image( fotos [7], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 300, 500, 100, 50);
    fill(0);
    text (textos [6], 300, 470, 500, 400); ///
  
   }
    if(pantalla==8){
    image( fotos [8], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 50, 500, 100, 50);
    fill(0);
    text (textos [7], 300, 220, 500, 400);
    shashakira (500, 300, 160, 60, "SIGUIENTE", 160, 60);
   }
   if(pantalla==9){
    image( fotos [9], 0, 0, 600, 600);
    fill(0);
    text (textos [8], 300, 220, 400, 400);
    shashakira (500, 300, 160, 60, "Aceptar", 160, 60);
    shashakira(100, 300, 160, 60, "No aceptar ", 160, 60);
   }
   if(pantalla==10){
   image( fotos [10], 0, 0, 600, 600);
    fill(0);
    text (textos [9], 300, 270, 500, 400);
    shashakira(500, 300, 160, 60, "Si", 160, 60);
   }
   if(pantalla==11){
    image( fotos [11], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 150, 500, 250, 50);
    fill(0);
    text (textos [10], 300, 260, 500, 400); 
    shashakira (500, 400, 160, 60, "SIGUIENTE", 160, 60);
   } 
 if( pantalla == 12){
    image( fotos [12], 0, 0, 600, 600);
    fill(255, 255, 255, 100);
    rect( 300, 150, 500, 250, 50);
    fill(0);
    text (textos [11], 300, 260, 500, 400);
    shashakira (300, 550, 150, 60, "FIN", 160, 60);
   }
if( pantalla == 13){
    image( fotos [13], 0, 0, 600, 600);
   
  fill(255, 255, 255, 100);
    rect( 300, 150, 500, 250, 50);
    fill(0);
    text (textos [12],  300, 300, 500, 400);
   shashakira(300, 550, 300, 60, "VOLVER", 150, 60);
   }
}
  
