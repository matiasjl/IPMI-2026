
int cant = 10;
int tam;

color a, b, c;

void setup() {
  size( 400, 400 );

  tam = width / cant;   //40
  
  a = color( random(255), random(255), random(255) );
  b = color( random(255), random(255), random(255) );
  c = color( random(255), random(255), random(255) );
  
}

void draw() {
  background( 100 );
  
  for ( int i = 0; i<cant; i++ ) {    //i = indice
    for ( int j = 0; j<cant; j++ ) {  //j = indice
      //if( i != j ){ 
      if( i == j ){ 
        fill( a );
      }
      if( i < j ){ 
        fill( b );
      }
      if( i > j ){ 
        fill( c );
      }
      rect( i*tam, j*tam, tam, tam );  //10x10=100 celdas
    }
  }
  
  //noLoop();
  
  //cant = 1 + int( mouseX );
  //tam = width / cant;
}
