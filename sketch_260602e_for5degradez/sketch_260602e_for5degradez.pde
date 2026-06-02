
void setup() {
  size( 800, 500 );
  colorMode( HSB, 360, 100, 100 );  //hue, saturacion, brillo 
  
}

void draw() {

  for ( int x = 0; x < width; x+=1 ) {  //itera 400 veces
    //
    //float d = dist( x, 0, 0, 0 );
    //println( d );
    //
    //float m = map( valor, esc1min, esc1max, esc2min, esc2max );
    float m = map( x, 0, 800, 0, 360 );  //-------------traspolacion de escalas
    println( m );
    //
    color c = color( m, 100, 100 );  //HSB
    //
    stroke( c );
    line( x, 0, x, height );
    println( x );
  }
  
  noLoop();
}
