// ejemplo de chat gpt

boolean encontrado = false;

void setup() {
  size( 200, 200 );
}

void draw() {

  while (!encontrado) {

    float x = random(width);

    float y = random(height);

    point(x, y);

    if (dist(x, y, width/2, height/2) < 20) {

      encontrado = true;
    }
  }
}
