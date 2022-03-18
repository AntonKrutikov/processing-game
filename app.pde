PImage spritesheet;
int w,h,frame,frames;
Enemy enemy;

void setup() {
  size(800, 600);
  frameRate(30);
  spritesheet = loadImage("bat.png");
  enemy = new Enemy();
  w = 512;
  h = 512;
  frames = 3;
  frame = 0;
}

PImage nextFrame() {
  if (frameCount % 3 == 0) frame++;
  if (frame == frames) frame = 0;
  return spritesheet.get(frame * 512,0,w,h);
}

void draw() {
  background(0);
  image(nextFrame(),0,0, 128,128);
  //if (mousePressed) {
  //  fill(0);
  //} else {
  //  fill(255);
  //}
  //ellipse(mouseX, mouseY, 80, 80);
  //circle(100,100);
}
