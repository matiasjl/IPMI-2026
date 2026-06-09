
int cant = 10;
int tam;

void setup(){
  size( 400, 400 );
  
  tam = width / cant;   //40
}

void draw(){
  for( int i = 0 ; i<cant ; i++ ){
    rect( i*tam, 0, tam, tam );
  }

  for( int i = 0 ; i<cant ; i++ ){
    rect( 0, i*tam, tam, tam );
  }

}
