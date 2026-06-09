
int cant = 10;
int tam;

void setup() {
  size( 400, 400 );
  noStroke();  //sin bordes
  //
  ellipseMode( CORNER );  //CENTER, CORNER, CORNERS
  //rectMode( ...

  tam = width / cant;   //40
}

void draw() {
  background( 127 );
  
  for ( int i = 0; i<cant; i++ ) {    //i = indice
    for ( int j = 0; j<cant; j++ ) {  //j = indice
      if( (i+j)%2 == 0 ){  //suma de los indices PAR 
        fill( 0 );
        rect( i*tam, j*tam, tam, tam );  //10x10=100 celdas
      }else{
        fill( 255 );
        ellipse( i*tam, j*tam, tam, tam );  //10x10=100 celdas
      }
    }
  }
  
  //cant = 1 + int( mouseX );
  //tam = width / cant;
}
