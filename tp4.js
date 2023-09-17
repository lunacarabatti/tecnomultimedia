//tp°4
//Luna Carabatti
//94723/5


let x, y, px, py; // Creo que variable de la nave individual
let ang, dire; // Ángulo de giro y dirección del disparo
let vel; // Velocidad del disparo
let bola;
let cant = 80; // Total de círculos
let pos = []; // Arreglo de posición de los asteroides
let tam = 40;

let derribadoRojo = [];
let derribadoVerde = [];
let derribadoAzul = [];

function setup() {
  createCanvas(450, 450);
  x = width / 2;
  y = height;
  vel = 5;
  ang = -90;
  px = x;
  py = y;

  // Inicializar las posiciones de las naves en fila
  let spacing = 30; // Espacio entre las naves
  for (let columna = 0; columna < 20; columna++) {
    for (let i = 0; i < cant; i++) {
      let ind = columna * 8 + i; // Cálculo del índice en el arreglo
      pos[ind] = [];
      pos[ind][0] = (columna + 1) * 40; // Espacio entre columnas
      pos[ind][1] = i * 40 + 40; // Espacio entre círculos en una columna

      // Inicializar el estado de derribo para cada nave
      derribadoRojo[ind] = false;
      derribadoVerde[ind] = false;
      derribadoAzul[ind] = false;
    }
  }
  textSize(30);
}

function draw() {
  background(200);
  push();
  translate(x, y);
  ang = atan2(mouseY - y, mouseX - x); // Captura el ángulo de giro del cañón
  rotate(ang);
  fill(200, 200, 0);
  rectMode(CENTER);
  rect(0, 0, 100, 30);
  pop();

  line(mouseX, mouseY, x, y);
  if (bola) {
    px = px + cos(dire) * vel; // Valor de giro de la bala
    py = py + sin(dire) * vel;
  }
  fill(255, 0, 0);
  circle(px, py, 20);

  // Reiniciamos la posición de la bala si sale de la pantalla
  if (px > width || px < 0 || py > height || py < 0) {
    px = x;
    py = y;
    bola = false;
  }

  for (let i = 0; i < cant; i++) {
    // Determinar el color de la nave
    let colorNave;
    if (i % 3 === 0) {
      colorNave = color(255, 0, 0); // Rojo
    } else if (i % 2 === 1) {
      colorNave = color(0, 255, 0); // Verde
    } else {
      colorNave = color(0, 0, 255); // Azul
    }
    fill(colorNave);
    circle(pos[i][0], pos[i][1], tam);

    // Verificar si la bala ha derribado una nave del mismo color
    let derribado;
    if (colorNave.levels[0] === 255) {
      derribado = derribadoRojo[i];
    } else if (colorNave.levels[1] === 255) {
      derribado = derribadoVerde[i];
    } else {
      derribado = derribadoAzul[i];
    }

    if (derribo(px, py, 20, pos[i][0], pos[i][1], tam) && !derribado) 
    {
    
     
      pos[i][1] = height + tam;

      // Actualizar el estado de derribo para la nave correspondiente
      if (colorNave.levels[0] === 255) {
        derribadoRojo[i] = true;
      } else if (colorNave.levels[1] === 255) {
        derribadoVerde[i] = true;
      } else {
        derribadoAzul[i] = true;
      }
    }
  }

 
}

function derribo(x, y, d, px, py, ptam) {
  let distan = dist(x, y, px, py);
  return distan < d / 2 + ptam / 2;
}

function mousePressed() {
  bola = true;
  dire = ang;
}
