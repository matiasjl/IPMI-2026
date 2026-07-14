// arreglos de dos dimensiones, tipo tabla /RMX grises con INT

int ct = 5;  //tamanio- cantidad de celdas
//
//boolean[][] tabla = new boolean[ct][ct];  //el tipo de dato es unico en JAVA
int[][] tabla = new int[ct][ct];  //el tipo de dato es unico en JAVA

void setup() {
  size( 400, 400 );
  
  //asignacion inicial de valor x defecto
  for ( int i = 0; i < ct; i++ ) {  //filas
    for ( int j = 0; j < ct; j++ ) {  //columnas
      //tabla[i][j] = false;
      tabla[i][j] = 255;  //blanco puro
    }
  }
  
  //asignacion manual de valores, posicion [2][2]
  //tabla[2][2] = true;
  tabla[2][2] = 100;  //gris oscuro

}

void draw() {
  drawGrilla( ct, tabla );  //nueva version de la misma funcion pero que acepta arrays 2d int
}

void mouseDragged() {
  //calculo la posicion del mouse respecto a la celdas y cambiar el valor de mi array
  float t = width / ct;
  //
  for ( int i = 0; i < ct; i++ ) {  //filas
    for ( int j = 0; j < ct; j++ ) {  //columnas
      //
      if( estoyEnLaCelda(i*t, j*t, t, t) ){  //uso mi funcion propia con return
        //tabla[i][j] = !tabla[i][j];  //le asigno el valor opuesto al actual
        if( tabla[i][j] > 1 )
          tabla[i][j]-=1;
      }
    }
  }
}
