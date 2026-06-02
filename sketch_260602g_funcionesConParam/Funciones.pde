
void circulosConcentricos(){
  for ( int i = 0; i < 10; i++ ) {  //i entre 0 y 9
    fill( 0, 40 );  //escala grises con opacidad
    circle( width/2, height/2, i*50 );
  }
}

void circulosConcentricos( int c ){
  for ( int i = 0; i < c; i++ ) {  //i entre 0 y 9
    fill( 0, 40 );  //escala grises con opacidad
    circle( width/2, height/2, i*50 );
  }
}

void circulosConcentricos( int c, int d ){
  for ( int i = 0; i < c; i++ ) {  //i entre 0 y 9
    //fill( 0, 40 );  //escala grises con opacidad
    noFill();
    circle( width/2, height/2, i*d );
  }
}
