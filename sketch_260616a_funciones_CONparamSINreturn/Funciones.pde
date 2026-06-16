void dibujarFigura(){  //crear mi funcion
  fill( 0 );  // 1 param
  rect(100, 100, 200, 200);  //4 param
  fill( 255 );  // 1 param
  circle( 200, 200, 100 );  //3 param
}

void dibujarFigura( color rellenoDelCirculo ){  //crear mi funcion
  fill( 0 );  // 1 param
  rect(100, 100, 200, 200);  //4 param
  fill( rellenoDelCirculo );  // 1 param
  circle( 200, 200, 100 );  //3 param
}
void dibujarFigura( int x, int y, int t ){  //crear mi funcion
  push();
  noStroke();
  fill( 0 );  // 1 param
  rect(x, y, t, t);  //4 param
  fill( 255 );  // 1 param
  circle( x+t/2, y+t/2, t/2 );  //3 param
  pop();  //resetea los estilos
}
//void dibujarCuadrado( int x, int y, int t){
//  rect( x, y, t, t );
//}  // NO VALE
void dibujarConVertex(){
  push();
  fill( 0, 0, 255, 100 );
  //
  beginShape();  //aca comienza dibujo
  vertex(150, 120);
  vertex(440, 80);
  vertex(240, 350);
  vertex(340, 300);
  vertex(120, 280);
  endShape();    //aca termina dibujo
  pop();
}
