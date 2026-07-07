// arreglos de dos dimensiones, tipo tabla

int ct = 10;  //tamanio- cantidad de celdas
//
boolean[][] tabla = new boolean[ct][ct];  //el tipo de dato es unico en JAVA

void setup() {
  size( 400, 400 );
  
  //asignacion inicial de valor x defecto
  for ( int i = 0; i < ct; i++ ) {  //filas
    for ( int j = 0; j < ct; j++ ) {  //columnas
      tabla[i][j] = false;
    }
  }
  
  //asignacion manual de valores, posicion [0][0]
  tabla[0][0] = true;

}

void draw() {
  drawGrilla( ct, tabla );
}

void mousePressed() {
  //calculo la posicion del mouse respecto a la celdas y cambiar el valor de mi array
  float t = width / ct;
  //
  for ( int i = 0; i < ct; i++ ) {  //filas
    for ( int j = 0; j < ct; j++ ) {  //columnas
      //
      if( estoyEnLaCelda(i*t, j*t, t, t) ){  //uso mi funcion propia con return
        tabla[i][j] = !tabla[i][j];  //le asigno el valor opuesto al actual
      }
    }
  }
}
