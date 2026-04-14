// HOY > COLOR PARA DIBUJAR 
// Highlights
// a: modos de color rgb o hsb
// b: las propiedades de dibujo las heredan todas las figuras primitivas posteriores en el codigo
// c: rectMode y ellipseMode para modificar el comportamiento de los parametros de rect y ellipse

void setup(){  // se ejecuta 1 vez AL INICIAR EL PROGRAMA
  frameRate( 1 );  //FUNCION que fija el frameRate
  size( 400, 400 );
  
  //colorMode( RGB );  //por defecto
  //colorMode( HSB, 360, 100, 100 );  //por defecto
  
  //rectMode > CORNER, CORNERS, CENTER, RADIUS
  rectMode( CORNER );  //similar con ellipseMode();
}

void draw(){  // se ejecuta n veces x segundo 
  //println( frameRate );  //VARIABLE que devuelve el frameRate actual
  println( mouseY );  //VARIABLE que devuelve el frameRate actual

  //background( 100 );  // escala de grises
  //background( 255, 255, 255 );  // modelo rgb: blanco puro
  //background( 0, 100, 100 );  // modelo hsb: rojo puro

  colorMode( RGB, 255, 255, 255 );
  background( 255 );
  
  //propiedades de bordes de figuras
  //strokeWeight( 5 );  //grosor de lineas
  noStroke();   //sin lineas
  //stroke( 127 );  //color de lineas
  
  //rgb colores primarios
  fill( 255, 0, 0 );  //determina el color de TODAS las figuras despues de esta linea
  ellipse( 100, 200, 80, 80 );  //rojo
  fill( 0, 255, 0 );
  ellipse( 200, 200, 80, 80 );  //verde
  fill( 0, 0, 255 );
  ellipse( 300, 200, 80, 80 );  //azul
  
  //rgb colores secundarios
  fill( 255, 255, 0 );  //TIP: el 4to param de color es la opacidad / transparencia
  rect( 100, 200, 100, 100 ); 
  fill( 0, 255, 255 );
  rect( 200, 200, 100, 100 ); 
  fill( 255, 0, 255 );
  rect( 300, 200, 100, 100 ); 
  
  //hsb colores secundarios
  //
  // ellipses con menos brillo  (tercer param)
  colorMode( HSB, 360, 100, 100 );
  fill( 0, 100, 50 );
  ellipse( 100, 120, 80, 80 );  //rojo
  fill( 120, 100, 50 );
  ellipse( 200, 120, 80, 80 );  //verde
  fill( 240, 100, 50 );
  ellipse( 300, 120, 80, 80 );  //azul
  //
  //  rect con menos saturacion  (segundo param)
  fill( 0, 30, 100 );
  rect( 100, 300, 100, 100 ); 
  fill( 120, 30, 100 );
  rect( 200, 300, 100, 100 ); 
  fill( 240, 30, 100 );
  rect( 300, 300, 100, 100 ); 
    
  
  //noLoop();  //frena el draw
}
