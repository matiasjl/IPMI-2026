// PPaint v2 com3
// - eventos: la pregunta del CUANDO

int pmousex;
int pmousey;

//declaro mis variables globales fuera de las estructuras
int lapizGrosor;
color lapizColor;

//Variable booleana TRUE/FALSE
boolean control;
boolean gomaDeBorrar;

void setup() {  // CUANDO: 1 vez al iniciar el programa
  size( 600, 600 );
  background( 255 );

  //Variable local
  int variable = 0;

  //asigno valores iniciales a mis variables globales
  lapizGrosor = 10;
  lapizColor = color( 100 );  //gris

  rect( 50, 50, 500, 400 );  //area de dibujo
}

void draw() {  // CUANDO: 60fps promodio todo el tiempo luego del setup, hasta cerrar el programa

  //el circulo no se ve afectado por el stroke y strokeWeight de la linea porque esta entre pushSty y popStyle
  circle( width/2, 500, 50 );


  //previous mousex/y manual
  pmousex = mouseX;
  pmousey = mouseY;
}

void mousePressed() {  //CUANDO: al hacer clic con cualquiera de los botones del mouse o trackpad
  if ( mouseButton == RIGHT ) {  //usa la goma
    gomaDeBorrar = true;
  }
  if ( mouseButton == LEFT ) {  //usa el lapiz
    gomaDeBorrar = false;  
  }
}

void keyPressed() {  // CUANDO: presiono cualquier tecla del teclado

  //si > entonces | expresion booleana (TRUE/FALSE)
  if ( key == 'g' ) {
    lapizGrosor = lapizGrosor + 10;
  }

  if (keyCode == CONTROL) {
    control = true;
  }

  //Si key es z y control es true: AND
  if ((key == 'z') && (control == true)) {
    background( 255 );
    rect( 50, 50, 500, 400 );  //area de dibujo
    //
    control = false;
  }

  /*if( keyCode == BACKSPACE ){  //borra el dibujo y recrea el area
   background( 255 );
   rect( 50, 50, 500, 400 );  //area de dibujo
   }*/

  println( key );
}

void mouseDragged() {  // CUANDO: mantenes clic apretado y arrastras el mouse
  //mi figura que sigue el mouse
  //fill( 255 );
  //circle( mouseX, mouseY, 10 );

  //pushMatrix();
  //popMatrix();

  //if( gomaDeBorrar == false ){
  if ( !gomaDeBorrar ) {  //! = NO
    pushStyle();  //encapsula propiedades de primitivas 2d
    stroke( lapizColor );
    strokeWeight( lapizGrosor );
    line( mouseX, mouseY, pmousex, pmousey );
    popStyle();  //--------------------------------------
  } else {  //SINO = cuando gomaDeBorrar es TRUE
    pushStyle();  //encapsula propiedades de primitivas 2d
    noStroke();
    circle( mouseX, mouseY, lapizGrosor );
    popStyle();  //--------------------------------------
  }
}
