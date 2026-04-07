// ejercicio tp1
// palabras azules = FUNCIONES
// palabras rosas = VARIABLES

// Para cargar una imagen necesito:
// 1- una variable de imagen: aca afuera(?
// 2- la carga de la imagen en la variable: SETUP
// 3- dibujar la imagen en pantalla: DRAW

int edadDelProfe = 30;  //tipo nombre = dato;

//paso 1 imagen
PImage miObraArquitectonica;

void setup(){  //ejecuta 1 sola vez al iniciar el programa/software
  size( 800, 400 );
  
  //paso 2 imagen
  miObraArquitectonica = loadImage( "obelisco00.jpg" );
}

void draw(){  //ejecuta aprox 60 veces por segundo (60 fps)
  background( 255 );
  //background( frameCount%255 );
  
  //paso 3 imagen
  image( miObraArquitectonica, 0, 0, 400, 400 );
  
  //triangle( x1, y1, x2, y2, x3, y3 );
  triangle( 675, 75, 625, 150, 725, 150 );
  
  
  
  
  
  //
  fill( 0 );
  textSize( 24 );
  text( mouseX + " / " + mouseY, mouseX, mouseY );
  //
  println( mouseX + " / " + mouseY );
  println( frameRate );  //devuelve fps actual
  println( frameCount );  //cuenta la cantidad de frames desde que inicio el programa
  println("SALTO -esto es un texto-");
}
