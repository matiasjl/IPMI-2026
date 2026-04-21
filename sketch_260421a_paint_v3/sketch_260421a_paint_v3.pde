// PPaint v3
/*
  esto es un comentario de varias lineas
 - pmouseX y pmouseY: variables del entorno que devuelven la posicion del mouse en el frame anterior
 - con la operacion '+' puedo sumar numeros o concatenar texto
 - cada variable es unica y solo guardan 1 valor
 - ----------------------
 - variables GLOBALES vs LOCALES
 - - GLOBALES funcionan en todo el codigo
 - - LOCALES funcionan solo entre las llaves de la estructura (setup, draw, etc)
 - condicionales IF: si tal cosa es verdad, entonces ejecuta el codigo entre llaves
 - variable 'key' es la ultima tecla presionada
 - '=' asigna valor, '==' es pregunta por igualdad
 /
 */

// variables de usuario/programador
int GROSOR = 1;  //default: 1
color COLOR = color( 0 );  //default: negro

void setup() {  //1 vez al iniciar el programa
  size( 600, 600 );
  background( 255 );

  //frameRate( 15 );  //modo didactico: NO USAR
}

void draw() {  // X veces por segundo, todo el tiempo hasta frenar el programa
  
  // mi draw esta vacio :O
  
  //println( COLOR );  //todo es numeros

  //if( mousePressed ){  //mientras mantengo presionado el mouse, xq estoy en el ciclo draw
  //  GROSOR = GROSOR + 1;
  //}
}

// EVENTOS, un acercamiento a condicionales

void mousePressed() {  // CUANDO presiono el mouse
  //GROSOR = 5;
  if (mouseButton == RIGHT){  //clic derecho
    GROSOR = GROSOR + 1;  // sumo 1 al valor actual (incremento en 1)
  }
  
  println( "GROSOR: " + GROSOR );  //imprimo en consola el valor de grosor
}

void keyPressed() {  // CUANDO apreto una tecla del teclado
  //
  println( key );
  //
  if ( key == 'r' ) {  //si la tecla presionada es la 'r' minuscula
    COLOR = color( 200, 0, 0 );  //rojo
  }
  if ( key == 'b' ){
    COLOR = color( 0 );  //negro
  }
  if( key == ' ' ){  //barra espaciadora
    background( 255 );
  }
  
  //tip para guardar
  if( key == 'g' ){
    // Saves each frame as line-000001.png, line-000002.png, etc.
    saveFrame( "draw-######.png" );  //guarda la imagen del frame actual en la carpeta del sketch
    println( "---Su dibujo a sido guardado :)");
  }
}

void mouseDragged() {  // CUANDO arrastro el mouse presionado "draggear"
  //uso de VARIABLES para afectar las PROPIEDADES de dibujo
  stroke( COLOR );
  strokeWeight( GROSOR );

  // mi lapiz
  //circle( mouseX, mouseY, 15 );
  line( mouseX, mouseY, pmouseX, pmouseY );
}
