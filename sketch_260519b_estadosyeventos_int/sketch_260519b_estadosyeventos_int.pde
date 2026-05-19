// maquina de estados finitos (diagrama de flujo)
// -- estrategia para pantallas
// -- estados: permanence en el tiempo
// -- eventos: un cambio de estado, un instante

int estado;

void setup(){
  size( 200, 200 );
  
  estado = 0;  //primera pantalla
  println( estado );
}
void draw(){
  // --------------------- pantalla 1
  if( estado == 0 ){
  
    background( 200, 0, 0 );  //rojo
  
  
  
  // --------------------- pantalla 2
  }else if( estado == 1 ){

    background( 0, 200, 0 );  //verde

    
    
  // --------------------- pantalla 3
  }else if( estado == 2 ){

    background( 0, 0, 200 );  //azul
    


  }

}

void keyPressed(){
  //estado = estado + 1;
  estado++;  //incremento en 1
  println( estado );
  
  if( estado > 2 )  //tip: si el if tiene una sola linea de codigo pueden no usar llaves
    estado = 0;  //reinicio
}
