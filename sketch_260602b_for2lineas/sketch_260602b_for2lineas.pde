
int varGlobal;

void setup() {
  size( 400, 400 );
  strokeWeight( 3 );

  int varLocal;
}

void draw() {
  //line( 0, 0, 0, height );
  //line( 40, 0, 40, height );
  //line( 80, 0, 80, height );
  //line( 120, 0, 120, height );
  //line( 160, 0, 160, height );
  //line( 200, 0, 200, height );
  //line( 240, 0, 240, height );
  //line( 280, 0, 280, height );
  //line( 320, 0, 320, height );
  //line( 360, 0, 360, height );

  //for( int i = 0 ; i <= 10 ; i++ ){
  //  line( i*40, 0, i*40, height );
  //}

  for ( int x = 0; x <= 400; x+=40 ) {  //variable locales SOLO dentro del ciclo for!!!
    line( x, 0, x, height );
    println( x );
  }
}
