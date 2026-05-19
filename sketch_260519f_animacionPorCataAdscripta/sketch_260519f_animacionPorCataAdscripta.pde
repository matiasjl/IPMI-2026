//animacion x cata / com2 / tecno1 / 2026

float posX;
float vel;

float tono;
float tonoVel;

float tamaño;
float tamañoVel;

String mensaje;

float transp;  //trasnparencia

void setup()
{
  size(800, 500);
  colorMode(HSB, 360, 100, 100, 100);
  
  //asignacion de valores iniciales a mis variables de usuario
  posX = 400;
  vel = -1;
  tono = 200;
  tonoVel = 0;
  tamaño = 50;
  tamañoVel = 0;
  transp = 100;

  mensaje = "Este texto es animado"; //se puede cambiar entre los ""
}

void draw()
{
  background (245, 50, 70);
  
  //para que se vea la transparencia, puse varios colores de fondo
  noStroke();
  fill(200,40,80);
  rect(200,0,200,height);
  fill(150,60,50);
  rect(400,0,200,height);
  fill(80,50,80);
  rect(600,0,200,height);

  //MENSAJE
  textAlign(CENTER);
  fill (tono += tonoVel, 50, 55, transp);
  textSize(tamaño+=tamañoVel);
  text (mensaje, posX+=vel, 400);

  //REINICIAR POSICION
  if (posX < -1 - textWidth(mensaje)/2) //textWidth(String) retorna lo largo del String -> con este calculo, sé que el texto está fuera de la pantalla
  {
    posX = 800 + textWidth(mensaje)/2; //se reinicia la posición
  }
  if (posX > 801 +textWidth(mensaje)/2)
  {
    posX = 0 - textWidth(mensaje)/2;
  }

  //se reinicia el tono
  if (tono > 360)
  {
    tono = 0;
  }
  if (tono < 0)
  {
    tono = 360;
  }
  
  //encerrar la transparencia entre 0 y 100
  if (transp > 100)
  {
    transp = 100;
  }
  if (transp < 0)
  {
    transp = 0;
  }

  //INSTRUCCIONES
  fill(245, 50, 10);
  textSize(15);
  textAlign(LEFT);
  text("flechas para alterar velocidad y tamaño \nclick izq y der para colores\narrastre de mouse para transparencia\npausar con espacio", 20, 20);
}

void keyPressed()
{
  if (keyCode == LEFT)
  {
    vel -= 1;
  }
  if (keyCode == RIGHT)
  {
    vel += 1;
  }
  if (keyCode == UP)
  {
    tamañoVel += 0.2;
  }
  if (keyCode == DOWN)
  {
    tamañoVel -= 0.2;
  }
  if (key == ' ')
  {
    vel = 0;
    tamañoVel = 0;
    tonoVel = 0;
  }
}

void mousePressed()
{
  if (mouseButton == LEFT)
  {
    tonoVel -= 0.1;
  }

  if (mouseButton == RIGHT)
  {
    tonoVel = 0;
  }
}

void mouseDragged()
{
  if (pmouseY>mouseY)
  {
    transp+=0.5;
  }
  if (pmouseY<mouseY)
  {
    transp-=0.5;
  }
}
