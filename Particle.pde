class Particle {

  PVector pos;
  PVector speed;
  PVector accel;
  PVector ang;

  PVector Aspeed;
  float ampx, ampy;
  float rdm;


  float topspeed;
  boolean bounce;
  float mass;

  float size;
  float border;
  float rdmsize;
  boolean starorpoly;
  int npoints;

  color colorShape;
  color colorStroke;

  float lifespawnspeed;
  float life;


  PShape figura;
  
  
  float shapealpha;
  float borderalpha;
  
  Particle(float _x, float _y, 
    float _speedx, float _speedy, 
    float _accelx, float _accely, 
    float _rdm, 
    boolean _bounce, 
    float _mass, 
    float _topspeed, 
    float _size, float _rdmsize, float _border, 
    int _npoints, 
    color _colorShape, color _colorStroke,
    float _shapealpha,float _borderalpha,
    float _lifespawnspeed, 
    float _ampx, float _ampy, 
    float _aspeedx, float _aspeedy) {

    pos = new PVector(_x, _y);
    speed = new PVector(_speedx, _speedy);
    accel = new PVector(_accelx, _accely);
    rdm = _rdm;
    
    npoints = _npoints;
    bounce = _bounce;
    mass = _mass;
    topspeed = _topspeed;
    size = _size;
    rdmsize = _rdmsize;
    border = _border;

    shapealpha = _shapealpha;
    borderalpha =_borderalpha;
    colorShape = _colorShape;
    colorStroke = _colorStroke;

    lifespawnspeed = _lifespawnspeed;

    life = 255;

    ang = new PVector(0, 0);
    ampx= _ampx;
    ampy = _ampy;
    Aspeed = new PVector(_aspeedx, _aspeedy);
    polygon();
  }
  void run() {
    display();
    update();
  }

  void applyForce(PVector _f) {
    PVector f =  _f.get();
    f.div(mass);
    accel.add(f);
  }

  void display() {
    pushMatrix();

    translate(pos.x, pos.y);
    //rotate(speed.heading());
    SHSBA();
    displayshape();
    popMatrix();
  }

  void update() {

    PVector random = PVector.random2D();
    random.mult(rdm);
    accel.add(random);


    //Aspeed += Aaccel;


    //rdm.norm alize();
    speed.add(accel);
    speed.limit(topspeed);

    //OSCILACION
    ang.add(Aspeed);
    float rdmx =  ampx * sin(radians(ang.x));
    float rdmy =  ampy * cos(radians(ang.y));
    pos.x += rdmx;
    pos.y += rdmy;
    pos.add(speed);


    life -= lifespawnspeed;

    accel.mult(0);
  }

  void SHSBA() {
    if (iscolorarray && camaritaactivada) {
      float umbral = map(mouseX, 0, width, 0, 255);
      color pix;

      // PImage arraycolorofcam = cam.copy();
      //arraycolorofcam.resize(1200,800);

      //int loc = int(  map(pos.x,0,width,0,cam.width) + map(pos.y,0,height,0,cam.height) * cam.width);
      //pix = cam.pixels[loc];
      // int loc = int(  map(pos.x,0,width,0,cam.width) + map(pos.y,0,height,0,cam.height) * cam.width);
      pix = cam.get(int(map(pos.x, 0, width, 0, cam.width)), int(map(pos.y, 0, height, 0, cam.height)));
      
    
      fill(pix, life * (shapealpha/255));
      stroke(colorStroke, life * (borderalpha/255));
      strokeWeight(border);
    } else {
      colorMode(HSB);
      fill(colorShape, life * (shapealpha/255));
      stroke(colorStroke, life* (borderalpha/255));
      strokeWeight(border);
    }
  }

  void displayshape() {
    // polygon();

    //rect(0,0,size,size);



    shape(figura, 0, 0, size, size);
  }

  boolean isDead() {
    if (life < 0 || pos.x > width || pos.x < 0 || pos.y > height || pos.y < 0 || size < 1) {
      return true;
    } else {
      return false;
    }
  }

  void polygon() {
    if (npoints <= 0) {
      // ellipse(0, 0, size, size);
      figura = createShape(ELLIPSE, 0, 0, size, size);
      figura.disableStyle();
    } else {
      figura = createShape();
      figura.disableStyle();
      figura.beginShape();
      for (int a = 0; a<360; a+=360/npoints) {
        //float rdmx = (size + random(-rdmsize, rdmsize)) * sin(radians(a));
        //float rdmy = (size + random(-rdmsize, rdmsize)) * cos(radians(a));
        float rdmx =  random(-rdmsize, rdmsize) + size   * sin(radians(a));
        float rdmy =  random(-rdmsize, rdmsize) + size   * cos(radians(a));

        figura.vertex(rdmx, rdmy);
      }
      figura.endShape(CLOSE);
    }
  }
}
