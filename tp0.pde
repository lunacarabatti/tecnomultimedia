//Carabatti Luna
// tp0 comision 1

PImage paisaje;
PImage grilla;
size(800, 400);
paisaje = loadImage ("paisaje.jpg");
grilla = loadImage( "grilla.png" );
image(grilla,0, 0, 400, 400);
image(paisaje, 0, 0, 400, 400);


background(255, 116, 125 );
noStroke();
image(paisaje, 0, 0, 400, 400);
fill(57, 22, 90);

fill(57, 22, 75);
rect(400, 290, 400, 800);
fill(57, 22, 93);
rect(400, 0, 400, 275);
fill(57, 0, 93);
rect(400, 0, 800, 200);
fill(51, 2, 82);
rect(400, 0, 800, 150);
fill(0);
triangle(400, 400, 599, 330, 800,400);
fill(0);
rect(595,250, 10, 100);
fill(0);
ellipse(600,235,150, 100);
fill(224, 135, 100);
ellipse(600, 273, 13, 20);
