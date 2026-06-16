// funciones CON parametros y CON return (devuelven valor)

void setup(){
  size( 400, 400 );
  textSize( 30 );
}
void draw(){
  //if( mouseEstaEnMitadDerecha() == true ){  //redundante
  if( mouseEstaEnMitadDerecha() ){  //redundante
    background( 255 );
    fill( 0 );  //text
    stroke( 0 );
  }else{
    background( 0 );
    fill( 255 );  //text
    stroke( 255 );
  }  
  //
  line( mouseX, mouseY, 0 , 0 );
  //
  float d = dist( mouseX, mouseY, 0 , 0 );  // 4 param + devuelve valor float
  text( d, 100, 100 );
  //
  int aux = suma(50,50);
  println( aux );
  //
}
