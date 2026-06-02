void setup() {
  size( 500, 500 );

  //for(iniciador, condición, actualización){
  //for ( int i = 0; i < 10; i++ ) {  //i entre 0 y 9
  //  fill( 0, 40 );  //escala grises con opacidad
  //  circle( width/2, height/2, i*50 );
  //}

  //for ( int i = 10; i > 0 ; i-- ) {  //i entre 10 y 1
  //  fill( 0, 40 );  //escala grises con opacidad
  //  circle( width/2, height/2, i*50 );
  //}

  for ( int i = 10; i > 0 ; i-- ) {  //i entre 10 y 1
    fill( 255, 0, 0, 40 );
    noStroke();
    circle( width/2, height/2, i*50 );
  }
  
  //se sigue ejecutando el codigo posterior al for
}
