// funciones SIN parametros SIN retorno
// Util para dibujar figuras reiteradas veces en distintas posiciones, tamanio, color

void setup(){
  size( 400, 400 );  // 2 param
  
}
void draw(){
  background( 255, 0, 0 );  // 1 o 3 param
  
  //fill( 0 );  // 1 param
  //rect(100, 100, 200, 200);  //4 param
  //fill( 255 );  // 1 param
  //circle( 200, 200, 150 );  //3 param

  //dibujarFigura();  //llamar a la funcion
  //
  //dibujarFigura( color(mouseX,0,0) );  //llamar a la funcion
  //
  dibujarFigura( 100, 100, 200 );  //llamar a la funcion
  dibujarFigura( 50, 50, 50 );  //llamar a la funcion
  dibujarFigura( 250, 250, 100 );  //llamar a la funcion
  dibujarFigura( 0, 250, 100 );  //llamar a la funcion
  //
  dibujarConVertex();
}
