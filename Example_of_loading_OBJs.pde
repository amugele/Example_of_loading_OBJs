PShape star;
int hue;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(500, 500, P3D);
  star = loadShape("icosastar.obj");
}

void draw() {
  background(0);

  directionalLight(100, 0, 100, -1, 1, -1);
  pointLight(frameCount%360, 100, 100, width/2, height/2, 0);
  shape(star, width/2, height/2, star.width*50, star.height*50);
  star.rotateY(map(mouseX, 0, width, -.05, .05));
  star.rotateX(map(mouseY, 0, height, .05, -.05));
}

