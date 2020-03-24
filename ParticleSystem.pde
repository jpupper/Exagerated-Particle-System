class ParticleSystem {

  ArrayList<Particle> particles;
  PVector pos;
  float spawnradius;
  ParticleSystem(float _x, float _y, float _spawnradius) {

    particles = new ArrayList<Particle>();
    pos = new PVector(_x, _y);
    spawnradius = _spawnradius;
  }


  void display() {


    addparticle();

    for (int p=particles.size()-1; p>0; p--) {
      Particle P = particles.get(p);
      P.run();
      if (P.isDead()) {
        particles.remove(P);
      }
      if (activaratractor) {
        P.applyForce( attractor.attract(P));
      }
    }
    
    if(mostraratractor){
      attractor.display();
    }
    
    
  }

  void update() {
  }
  void setpos(float x, float y) {
    pos.x = x;
    pos.y = y;
  }
  void addparticle() {





    particles.add(new Particle(pos.x + random(0, spawnradius) * sin(random(TWO_PI)), pos.y + random(0, spawnradius) * cos(random(TWO_PI)), 
      random(speedX_min, speedX_max), random(speedY_min, speedY_max), 
      random(accelX_min, accelX_max), random(accelY_min, accelY_max), 
      random(rdm_min, rdm_max), 
      true, 
      20, 
      random(topspeed_min, topspeed_max), 
      random(size_min, size_max), random(rdm_size_min, rdm_size_max), random(border_min, border_max), 
      int(random(npoints_min, npoints_max)), 
      color(random(shape_hue_min, shape_hue_max), random(shape_sat_min, shape_sat_max), random(shape_bri_min, shape_bri_max)), 
      color(random(stroke_hue_min, stroke_hue_max), random(stroke_sat_min, stroke_sat_max), random(stroke_bri_min, stroke_bri_max)),
      random(shape_alpha_min,shape_alpha_max),random(stroke_alpha_min,stroke_alpha_max),
      random(lifespawnspeed_min, lifespawnspeed_max), 
      random(ampx_min, ampx_max), random(ampy_min, ampy_max), 
      random(aspeedx_min, aspeedx_max), random(aspeedy_min, aspeedy_max)));

    /*  Particle(float _x, float _y, 
     float _speedx, float _speedy, 
     float _accelx, float _accely, 
     float _rdmx, float _rdmy, 
     boolean _bounce, 
     float _mass, 
     float _topspeed, 
     float _size, float _border, 
     int _npoints, 
     color _colorShape, color _colorStroke, 
     float _lifespawnspeed) {*/
  }

  void applyForce(PVector force) {
    for (Particle p : particles) {
      p.applyForce(force);
    }
  }
  void applyAttractor(Attractor _A) {
    for (Particle p : particles) {
      PVector force = _A.attract(p);
      p.applyForce(force);
    }
  }
}
