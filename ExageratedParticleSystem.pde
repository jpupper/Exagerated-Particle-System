int numerocamarita = 1; //CAMBIAR ESTE NUMERO SI NO TE LEVANTA LA CAMARITA. PROBAR CON 0 O 1 O LO QUE SEA FIJATE EN LA CONSOLA QUE TE TIRA LOS VALORES.
/******************************/






// IMPORT THE SPOUT LIBRARY
import spout.*;
import controlP5.*;
// IMPORT THE SPOUT LIBRARY
//import spout.*;


import processing.video.*;

Capture cam;


ControlP5 cp5;

Accordion accordion;
// DECLARE A SPOUT OBJECT
Spout spout;
// DECLARE A SPOUT OBJECT
//Spout spout;


void settings() {
  fullScreen(P3D);
  //size(1200, 600, P3D);
}
void setup() {

  colorMode(HSB);
  rectMode(CENTER);
  hint(DISABLE_OPTIMIZED_STROKE);
  gui();


  PS = new ParticleSystem(width/2, height/2, 500);
  attractor = new Attractor(width/2, 0);

  if (camaritaactivada) {
    iniciarcamarita();
  }
  imageMode(CORNER);
  // seguir = true;

  cp5.loadProperties("data/set1.json");
  // CREATE A NEW SPOUT OBJECT
  spout = new Spout(this);

  // CREATE A NAMED SENDER
  // A sender can be created now with any name.
  // Otherwise a sender is created the first time
  // "sendTexture" is called and the sketch
  // folder name is used.  
  spout.createSender("Exagerated Particle System");
}

void draw() {

  if (isbg) {
    background(fondo);
  }

  if (cam.available()) {
    cam.read();
  }
  if (displayimage) {

    image(cam, 0, 0, width, height);
  }
  for (int j=0; j<number; j++) {
    PS.display();
  }
  wasd();
  if (showframerate) {
    fill(255, 255, 255);
    textSize(25);
    text("FrameRate : " + frameRate, 10, height -30);  // Text wraps within text box
    println("framerate :", frameRate);
  }
  blob(); //Aca va a estar las cosas como para hacer lo del quad detection.
  cp5.setAutoDraw(Semuestra);
  if (spoutactive) {
    spout.sendTexture();
  }
}

float distSq(float x1, float y1, float z1, float x2, float y2, float z2) {
  float d = (x2-x1)*(x2-x1) + (y2-y1)*(y2-y1) +(z2-z1)*(z2-z1);
  return d;
}

void keyPressed() {

  if (key == 'm') {
    Semuestra = !Semuestra;
  }
  if (key == 'f') {
    showframerate = !showframerate;
  }
  if (key == 'b') {
    isbg = !isbg;
  }

  if (key  == 'o') {
    number++;
    println("Particulas : ", number);
  }

  if (key =='p') {
    number--;
    println("Particulas : ", number);
  }
  if (key == 'v') {
    cp5.saveProperties("data/set"+str(archivoactivo)+".json");
  }

  if (key == 'l') {
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }


  if (key == '1') {
    archivoactivo = 1;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '2') {
    archivoactivo = 2;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '3') {
    archivoactivo = 3;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '4') {
    archivoactivo = 4;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '5') {
    archivoactivo = 5;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '6') {
    archivoactivo = 6;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '7') {
    archivoactivo = 7;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '8') {
    archivoactivo = 8;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '9') {
    archivoactivo = 9;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }
  if (key == '0') {
    archivoactivo = 0;
    cp5.loadProperties("data/set"+str(archivoactivo)+".json");
  }




  if (camaritaactivada) {
    if (key == 'c') {
      iscolorarray = !iscolorarray;
    }
    if (key == 'i') {
      displayimage = !displayimage;
    }

    if (key== 'u') {
      seguir = !seguir;
      // println("Seleccion de color");
    }

    if (key =='g') {
      threshold-=10;
    }
    if (key =='h') {
      threshold+=10;
    }
  }
}

void mousePressed() {
  // Save color where the mouse is clicked in trackColor variable

  // if(cp5.getMouseOverList()){

  if (!Semuestra) {
    if (displayimage && seguir) {
      int loc = int(map(mouseX, 0, width, 0, cam.width)) + int(map(mouseY, 0, height, 0, cam.height))  * cam.width;
      trackColor = cam.pixels[loc];
    } else if (isparticleoratractor) {
      PS.setpos(mouseX, mouseY);
    } else {
      attractor.setpos(mouseX, mouseY);
    }
  }
  
}

void wasd() {

  if (keyPressed) {

    if (key == 'w') {

      PS.applyForce(new PVector(0, -str));
    }
    if (key == 's') {

      PS.applyForce(new PVector(0, str));
    }
    if (key == 'd') {

      PS.applyForce(new PVector(str, 0));
    }
    if (key == 'a') {

      PS.applyForce(new PVector(-str, 0));
    }
  }
}
