// PPaint v1
/*
  esto es un comentario de varias lineas
  - pmouseX y pmouseY: variables del entorno que devuelven la posicion del mouse en el frame anterior
  - con la operacion '+' puedo sumar numeros o concatenar texto
  - cada variable es unica y solo guardan 1 valor
  -
*/

// variables de usuario/programador
int GROSOR = 1;  //default: 1
color COLOR = color( 0 );  //default: negro

void setup(){  //1 vez al iniciar el programa
  size( 600, 600 );
  background( 255 );
  
  //frameRate( 15 );  //modo didactico: NO USAR
  
}

void draw(){  // X veces por segundo, todo el tiempo hasta frenar el programa
  
  //uso de VARIABLES para afectar las PROPIEDADES de dibujo
  stroke( COLOR );
  strokeWeight( GROSOR );
  
  // mi lapiz
  //circle( mouseX, mouseY, 15 );
  line( mouseX, mouseY, pmouseX, pmouseY );
  
  //println( COLOR );  //todo es numeros
}

// EVENTOS, un acercamiento a condicionales

void mousePressed(){  // CUANDO presiono el mouse
  //GROSOR = 5;
  GROSOR = GROSOR + 1;  // sumo 1 al valor actual (incremento en 1)
  
  println( "GROSOR: " + GROSOR );  //imprimo en consola el valor de grosor
}

void keyPressed(){  // CUANDO apreto una tecla del teclado

}

void mouseDragged(){  // CUANDO arrastro el mouse presionado "draggear"

}
