// repaso funciones

void setup(){
  size( 400, 400 );
}

void draw(){
  drawGrilla( 2 );
  drawGrilla( 4 );
  drawGrilla( 8 );  //se ve solo la ultima porque se pisan
  
  
  ////--------------------------------------------
  ////test de mi funcion con return
  //if( estoyEnLaCelda(150, 100, 150, 100) ){  //devuelve valor booleano, true or false
  //  fill( 200, 0, 0 );
  //}else{
  //  fill( 255 );
  //}
  //rect( 150, 100, 150, 100 );  //param coinciden con mi funcion
  ////
}

void mouseMoved(){

}
