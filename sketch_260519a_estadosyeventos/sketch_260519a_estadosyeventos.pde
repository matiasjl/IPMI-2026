// maquina de estados finitos (diagrama de flujo)
// -- estrategia para pantallas
// -- estados: permanence en el tiempo
// -- eventos: un cambio de estado, un instante

String estado;

void setup(){
  size( 200, 200 );
  
  estado = "pantalla3";  //aca cambio el estado
  
}
void draw(){
  // --------------------- pantalla 1
  //if( estado == "pantalla1" ){  //funciona pero NO es la forma correcta
  if( estado.equals("pantalla1") ){   //para comparar string de forma correcta
  
    background( 200, 0, 0 );  //rojo
  
  
  
  // --------------------- pantalla 2
  }else if( estado.equals("pantalla2") ){

    background( 0, 200, 0 );  //verde

    
    
  // --------------------- pantalla 3
  }else if( estado.equals("pantalla3") ){

    background( 0, 0, 200 );  //azul
    


  }

}
