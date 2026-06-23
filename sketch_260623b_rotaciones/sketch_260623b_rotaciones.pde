// push, pop, rotate y traslate
/*
  PI/4 = 45°
  HALF_PI = 90° /o/ PI/2 = 90°
  PI = 180°
  TWO_PI = 360°
  
  O mas facil, utilizar funcion radians() para convertir grados a radianes
*/

void setup(){
  size( 400, 400 );
}

void draw(){
  background( 0 );
  
  push();
  fill( 255, 50 );
  rectMode( CENTER );  //se resetea, junto a otras propiedades, luego del pop
  translate( width/2, height/2 );
  rotate( radians(mouseX) );
  rect( 0, 0, width, height );
  //todo lo que dibuje entre push y pop parte del nuevo eje de coordenadas
  circle( 0, 0, 250 );
  //si agrego otro translate dentro del push y pop, se suma al anterior
  translate( 100, 100 );
  circle( 0, 0, 120 );
  pop();
  
  //si cierro el pop, el espacio vuelve a la normalidad
  rect( 0, 0, 50, 50 );
  rect( 350, 350, 50, 50 );
}
