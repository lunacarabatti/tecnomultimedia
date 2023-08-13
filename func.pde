void shashakira(int x, int y, int ancho, int alto, String mitexto, int l1, int l2){
  rectMode(CENTER);
  fill(255);
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER);
  text(mitexto, x, y, l1, l2);
}

boolean shakira(int x, int y, int ancho, int alto) {
  if (mouseX>x && mouseX<x+ancho && mouseY>y && mouseY<y+alto){
      return true;
  }
  else{
     return false;
  }
}
