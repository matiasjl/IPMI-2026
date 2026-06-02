void setup() {
  size( 500, 500 );

}

void draw(){
  background( 255 );
  
  //circulosConcentricos();  //SIN parametros: encapsula codigo y siempre ejecuta el mismo resultado
  
  //circulosConcentricos( 17 ) ;  //CON 1 parametro: defino la cantidad de circulos

  circulosConcentricos( 50, 10 ) ;  //CON 2 parametros: defino cantidad de circulos y distancia entre si

  //circulosConcentricos( frameCount, mouseX/10 ) ;  //CON 2 parametros: defino cantidad de circulos y distancia entre si

}
