// explicacion calculo de distancia: dist()

int xCircle = 100;
int yCircle = 100;

void setup(){
  size( 400, 400 );
  
}
void draw(){
  background( 255 );
  
  float d = dist( xCircle, yCircle, mouseX, mouseY );
  println( d );
  
  if( d < 75 ){  //si  --TRUE
    fill( 0 );
  }else{         //sino  --FALSE
    fill( 200 );
  }

  circle( xCircle, yCircle, 150 );
  line( xCircle, yCircle, mouseX, mouseY );

}
