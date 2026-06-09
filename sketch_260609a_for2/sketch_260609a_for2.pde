
int cant = 10;
int tam;

void setup() {
  size( 400, 400 );

  tam = width / cant;   //40
}

void draw() {
  background( 100 );
  
  for ( int i = 0; i<cant; i++ ) {    //i
    for ( int j = 0; j<cant; j++ ) {  //j
      rect( i*tam, j*tam, tam, tam );  //10x10=100 celdas
    }
  }

}
