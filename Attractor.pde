class Attractor {
  float mass;
  PVector pos;
  float G;
  float str;
 
  Attractor(float _x,float _y) {
    pos = new PVector(_x,_y);
    mass = 20;
    G = 0.4;
    str = 0;
  }
 
  PVector attract(Particle m) {
    PVector force = PVector.sub(pos,m.pos);
    float distance = force.mag();
    //Remember, we need to constrain the distance so that our circle doesn’t spin out of control.
    distance = constrain(distance,5.0,25.0);
 
    force.normalize();
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(str);
    return force;
  }
 
  void display() {
    stroke(110,255,255);
    strokeWeight(7);
    //fill(175,200);
    noFill();
    ellipse(pos.x,pos.y,mass*2,mass*2);
  }
  
  void setpos(float _x,float _y){
    pos.x =_x;
    pos.y = _y;
  }
  
}
