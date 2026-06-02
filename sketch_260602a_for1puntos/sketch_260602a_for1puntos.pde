void setup(){
  size( 400, 400 );

  //for(iniciador, condición, actualización){
  for( int i = 0 ; i < 2000 ; i++ ){  //i entre 0 y 9
    fill( 0, 127 );
    circle( random(width) , random(height) , 5 );
  }
  
  //se sigue ejecutando el codigo posterior al for

}
