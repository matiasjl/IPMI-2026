// ipmi tp1 2026
// 52 archivos x 5 segundos = 380 segundos 6 minutos

int c = 53;  //52
PImage[] tps = new PImage[c];

int n = 0;  //numero img
int s = 5;  //segundos

void setup() {
  //size(1824, 1080);
  size(912, 540);
  frameRate( 30 );
  
  //cargo una imagen manual
  //tps = loadImage( "IPMI26_TP3_0.png" );
  tps[0] = loadImage( "IPMI26_TP3_0.png" );
  tps[1] = loadImage( "IPMI26_TP3_1.png" );
  tps[2] = loadImage( "IPMI26_TP3_2.png" );
  
  //cargo todas las imagenes auto
  for ( int i = 0; i < c; i++ ) {
    tps[i] = loadImage( "IPMI26_TP3_" + i + ".png" );
    tps[i].resize( 912, 540 );
  }

  //println( n );  //test  //=0
}

void draw() {
  background( 255 );

  if ( frameCount % (30*s) == 0 ) {  //cada 5 segundos
    n++;
    //
    if ( n == c )  //si el indice(n) es igual a la cantidad(c)
      n = 0;
    //
    println( n );
  }

  image( tps[n], 0, 0 );
}
