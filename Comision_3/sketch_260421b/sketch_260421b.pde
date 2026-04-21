// PPaint v1 com3
// - eventos: la pregunta del CUANDO

int pmousex;
int pmousey;

//declaro mis variables globales fuera de las estructuras
int lapizGrosor;
color lapizColor;

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
  circle( width/2 , 500, 50 );
  
  
  //previous mousex/y manual
  pmousex = mouseX;
  pmousey = mouseY;
}

void mousePressed(){  //CUANDO: al hacer clic con cualquiera de los botones del mouse o trackpad

}

void keyPressed(){  // CUANDO: presiono cualquier tecla del teclado

}

void mouseDragged(){  // CUANDO: mantenes clic apretado y arrastras el mouse
  //mi figura que sigue el mouse
  //fill( 255 );
  //circle( mouseX, mouseY, 10 );
  
  //pushMatrix();
  //popMatrix();
  
  pushStyle();  //encapsula propiedades de primitivas 2d
  stroke( lapizColor );
  strokeWeight( lapizGrosor );
  line( mouseX, mouseY, pmousex, pmousey );
  popStyle();  //--------------------------------------
}
