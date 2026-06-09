
int cant = 10;
int tam;

void setup() {
  size( 400, 400 );
  noStroke();  //sin bordes
  //
  ellipseMode( CENTER );  //CENTER, CORNER, CORNERS
  rectMode( CENTER );

  tam = width / cant;   //40
}

void draw() {
  background( 255 );
  
  for ( int i = 0; i<cant; i++ ) {    //i = indice
    for ( int j = 0; j<cant; j++ ) {  //j = indice
      //
      //float d = dist( width/2, height/2, i*tam, j*tam );
      //float d = dist( 0, 0, i*tam, j*tam );
      float d = dist( mouseX, mouseY, i*tam, j*tam );
      //
      if( (i+j)%2 == 0 ){  //suma de los indices PAR 
        fill( 255, 0, 0, 100 );
        rect( i*tam, j*tam, d/2, d/2 );  //10x10=100 celdas
      }else{
        fill( 0, 0, 255, 100 );
        ellipse( i*tam, j*tam, d/2, d/2 );  //10x10=100 celdas
      }
    }
  }
  
  //cant = 1 + int( mouseX );
  //tam = width / cant;
}
