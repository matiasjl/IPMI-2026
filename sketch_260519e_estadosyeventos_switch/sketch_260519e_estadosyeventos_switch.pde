// maquina de estados finitos (diagrama de flujo)
// -- estrategia para pantallas
// -- estados: permanence en el tiempo
// -- eventos: un cambio de estado, un instante
// ---------- switch como alternativa a if else if

int estado;

void setup() {
  size( 200, 200 );

  estado = 0;  //primera pantalla
  println( estado );
}
void draw() {
  switch( estado ) {
    // --------------------- pantalla 1
  case 0:
    //background( 200, 0, 0 );  //rojo
    //imagenes
    //textos
    //etc

    //ESTADO
    pantalla1();

    //EVENTO
    if ( millis() > 5000 )
      estado = 1;

    break;
    // --------------------- pantalla 2
  case 1:
    //ESTADO
    pantalla2();

    //EVENTO
    if ( millis() > 10000 )
      estado = 2;


    break;
    // --------------------- pantalla 3
  case 2:
    //ESTADO
    pantalla3();

    //EVENTO
    //if ( millis() > 15000 )  //OJO ustedes rtienen que hacer un boton para reiniciar
    //  estado = 0;  //OJO hay un bug aca

    break;
  }
}

void keyPressed() {
  //estado = estado + 1;
  estado++;  //incremento en 1
  println( estado );

  if ( estado > 2 )  //tip: si el if tiene una sola linea de codigo pueden no usar llaves
    estado = 0;  //reinicio
}
