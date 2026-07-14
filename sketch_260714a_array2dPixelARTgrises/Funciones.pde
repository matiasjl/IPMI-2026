//funciones propias

//funcion con param que NO devuelve valor (dibujo)
void drawGrilla( int c ) {
  //
  float t = width / c;  // anchoVentana / cantidadDeCeldasd
  //
  for ( int i = 0; i < c; i++ ) {
    for ( int j = 0; j < c; j++ ) {
      //
      //if( estoyEnLaCelda(i*t, j*t, t, t) ){
      //  fill( 0 );
      //}else{
      //  fill( 255 );
      //}
      //
      float byn = estoyEnLaCelda(i*t, j*t, t, t) ? 0 : 255;  //forma resumida del if contitional para casos de asignacion de uno u otro valor
      //
      fill( byn );
      rect( i*t, j*t, t, t );
    }
  }
}

//funcion con param que NO devuelve valor (dibujo) + arreglos
void drawGrilla( int c, boolean[][] a ) {
  //
  float t = width / c;  // anchoVentana / cantidadDeCeldasd
  //
  for ( int i = 0; i < c; i++ ) {
    for ( int j = 0; j < c; j++ ) {
      //
      if( a[i][j] ){  //== true
        fill( 0 );
      }else{
        fill( 255 );
      }
      //
      rect( i*t, j*t, t, t );
    }
  }
}

//funcion con param que NO devuelve valor (dibujo) + arreglos RMX int
void drawGrilla( int c, int[][] a ) {
  //
  float t = width / c;  // anchoVentana / cantidadDeCeldasd
  //
  for ( int i = 0; i < c; i++ ) {
    for ( int j = 0; j < c; j++ ) {
      //
      fill( a[i][j] );  //nuevo: tomo el valor int de la posicion correspondiente del arreglo para pintar la celda
      rect( i*t, j*t, t, t );
      //
      fill( 0 );
      text( a[i][j], i*t+t/2, j*t+t/2 );  //nuevo: muestro con un texto el valor relativo de la posicion del arreglo
      //
    }
  }
}

//funciones con param que SI devuelven valor
boolean estoyEnLaCelda( float x, float y, float ancho, float alto ) {
  if( mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto ){
    return true;  
  }else{
    return false;
  }
  
 }
