class Follower {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Follower(int x, int y) {
    location = new PVector(x, y);
    velocity = PVector.random2D();
    acceleration = new PVector(0, 0);
  }
  
  void show() {
    fill(200, 100);
    ellipse(location.x, location.y, 20, 20);
  }
  
  void chase(int x, int y) {
    PVector mouse = new PVector(x, y);
    
    mouse.sub(location);
    mouse.setMag(0.8);
    acceleration = mouse;
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(int(random(5, 10)));
  }
}