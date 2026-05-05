// PPaint v4
/*
  esto es un comentario de varias lineas
 - expresiones racionales: <, >, <=, >=, ==, !=
 - operadores logicos: AND: &&, OR: ||, NOT: !
 - zonas rectangulares y circulares (con dist)
 /
 */

// variables de usuario/programador
int GROSOR = 1;  //default: 1
color COLOR = color( 0 );  //default: negro

void setup() {  //1 vez al iniciar el programa
  size( 600, 600 );
  
  int colorDeFondo = 255;  //variable LOCAL: muere entre llaves, en este caso en setup()
  
  //dibujo mi tablero
  background( colorDeFondo );
  rect( 50, 50, 500, 400 );  //IMPORTANTE: coordenadas que delimitan el area de dibujo
  //
  //botones de grosor:
  fill( 0 );
  circle( 75, 525, 20 );
  circle( 140, 525, 40 );
  circle( 225, 525, 60 );

  //frameRate( 15 );  //modo didactico: NO USAR
}

void draw() {  // X veces por segundo, todo el tiempo hasta frenar el programa
  
  // mi draw esta vacio :O
  
  //println( COLOR );  //todo es numeros

  //if( mousePressed ){  //mientras mantengo presionado el mouse, xq estoy en el ciclo draw
  //  GROSOR = GROSOR + 1;
  //}
}

// --------------------------------------------
// EVENTOS, un acercamiento a condicionales

void mousePressed() {  // CUANDO presiono el mouse
  //GROSOR = 5;
  //if (mouseButton == RIGHT){  //clic derecho
  //  GROSOR = GROSOR + 1;  // sumo 1 al valor actual (incremento en 1)
  //}
  
  //println( mouseButton );
  
  //println( "GROSOR: " + GROSOR );  //imprimo en consola el valor de grosor

  //interaccion de mis botones circulares para cambiasr el grosor
  //circle( 75, 525, 20 );
  //circle( 140, 525, 40 );
  //circle( 225, 525, 60 );
  if( dist(75, 525, mouseX, mouseY) < 10 ){  //determina una zona circular comparando distancia con radio del circulo en cuestion
    GROSOR = 1;
    println( "GROSOR: " + GROSOR );
  }
  if( dist(140, 525, mouseX, mouseY) < 20 ){
    GROSOR = 4;
    println( "GROSOR: " + GROSOR );
  }
  if( dist( 225, 525, mouseX, mouseY) < 30 ){
    GROSOR = 7;
    println( "GROSOR: " + GROSOR );
  }
  
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
  //if( mouseY > 50 ){
  //if( mouseX > 50 ){
  //if(mouseX < width-50 ){  //550
  //if(mouseY < 450 ){  //height-150
  
  //MORALEJA: para determinar un area rectangular necesitamos 4 condiciones
  
  //if( mouseY > 50 && mouseX > 50 && mouseX < width-50 && mouseY < 450 ){
  if( mouseY > 50 && mouseX > 50 && mouseX < width-50 && mouseY < 450 && pmouseY > 50 && pmouseX > 50 && pmouseX < width-50 && pmouseY < 450 ){
    //uso de VARIABLES para afectar las PROPIEDADES de dibujo
    stroke( COLOR );
    strokeWeight( GROSOR );
    // mi lapiz
    //circle( mouseX, mouseY, 15 );
    line( mouseX, mouseY, pmouseX, pmouseY );
  }
}
