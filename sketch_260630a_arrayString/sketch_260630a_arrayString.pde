// arreglos = listas de datos (variables)

int cantidad = 89;  //no es necesario si uso loadStrings()
String[] nombres = new String[cantidad];  //arreglo!!!!
//
String nombreDelProfe = "matias";  //var para comparar, no lo usare

void setup(){
  size( 600, 600 );
  textAlign( CENTER, CENTER );
  
  // con loadStrings() a partir de un txt
  nombres = loadStrings("nombresCom2.txt");
  println("hay " + nombres.length + " lineas");
  println("");
  for (int i = 0 ; i < nombres.length; i++) {  //cantidad = nombres.length
    println( i + ": " + nombres[i] );
  }
  
  
  background( 0 );
}

void draw(){

}

void keyPressed(){
  
  int azar = int(random(0, 88));
  
  fill( 0, 50 );
  noStroke();
  rect( 0, 0, width, height );
  
  fill( 200 );
  textSize( random( 30, 50 ) );
  text( nombres[azar], random( textWidth(nombres[azar])/2, width-textWidth(nombres[azar])/2), random(50, height-50) );
  //text( nombres[azar], random(50, width-50), random(50, height-50) );
}
