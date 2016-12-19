Follower[] dots;

void setup () {
  size(1280, 720);
  dots = new Follower[10];
  for (int i = 0; i < dots.length; i++) {
    dots[i] = new Follower(width/2, height/2);
  }
}

void draw () {
  background(50);
  for (int i = 0; i < dots.length; i++) {
    dots[i].show();
    dots[i].chase(mouseX, mouseY);
  }
}