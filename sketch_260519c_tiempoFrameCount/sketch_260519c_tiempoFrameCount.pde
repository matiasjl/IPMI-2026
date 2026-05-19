// manejo del tiempo
// frameCount vs millis()
// -- y tips para manejo del texto

void setup() {
  size( 200, 200 );

  textAlign( CENTER, CENTER );
  textSize( 50 );

  frameRate( 60 );  //fuerzo el ideal
}

void draw() {  //fps promedio 60
  println( frameRate );

  if ( frameCount < 60*5 ) {  //5 segundos = 300 frames
    background( 0 );
  } else if ( frameCount >= 60*5 && frameCount <= 60*10 ) {
    background( 50 );
  } else if ( frameCount >= 60*10 && frameCount <= 60*15 ) {
    background( 100 );  
  } else if ( frameCount >= 60*15 && frameCount <= 60*20 ) {
    background( 150 );  
  }else{
    background( 255 );
    frameCount = 0 ;
  }

  text( frameCount, width/2, height/2 );
}
