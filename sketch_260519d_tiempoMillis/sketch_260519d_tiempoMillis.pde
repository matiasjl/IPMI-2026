// manejo del tiempo
// frameCount vs millis()
// -- y tips para manejo del texto

PFont fuente;
PFont fuenteHarry;

int segundos;
int tamanio;

void setup() {
  size( 200, 200 );

  textAlign( CENTER, CENTER );
  textSize( 50 );

  frameRate( 60 );  //fuerzo el ideal
  
  fuente = loadFont( "Baskerville-BoldItalic-48.vlw" );  //cargo m,i archivo de fuente previamente creado con CreateFont
  textFont( fuente );
  
  fuenteHarry = createFont("HarryP", 100);  //lo mismo que Tools > Create Font
  textFont( fuenteHarry );
  
  //textSize( 10 );

}

void draw() {  //fps promedio 60
  segundos = millis()/1000;
  println( segundos );
  
  background( 0 );
  
  if( segundos == 0 ){
    tamanio = 10;
  }else if( segundos == 3 ){
    tamanio = 35;
  }else if( segundos == 7 ){
    tamanio = 80;
  }else if( segundos == 10 ){
    tamanio = 10;
  }
  
  circle( width/2, height/2, tamanio );

  //text( segundos, width/2, height/2 );
}
