// repaso funciones y variables de entorno

void setup() {
  size( 600, 600 );

  //frameRate( 15 );
}

void draw() {
  //background( 127 );
  fill( 127, 5 );
  noStroke();
  rect( 0, 0, width, height );

  //mi figura que sigue el mouse
  fill( 255 );
  println(mouseX +mouseY);
  circle( mouseX, mouseY, frameCount/10 );
}
