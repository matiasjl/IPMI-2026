//funciones propias

//funcion con param que SI devuelve valor (dibujo)
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

//funciones con param que SI devuelven valor
boolean estoyEnLaCelda( float x, float y, float ancho, float alto ) {
  if( mouseX > x && mouseX < x+ancho && mouseY > y && mouseY < y+alto ){
    return true;  
  }else{
    return false;
  }
  
  //if( mouseX > x ){
  //  if( mouseX < x+ancho ){
  //    if ( mouseY > y ){
  //      if (mouseY < y+alto ){
  //        //ejecuto este codigo
  //      }
  //    }
  //  }
  //}
  
}
