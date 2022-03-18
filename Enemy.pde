class Enemy {
  PImage spritesheet;
  int sw,sh,frame,frames;
  boolean isLive;
  Enemy(){
    load();
    sw = sh = 512;
    frames = 4;
    isLive = true;
  }
  
  PImage nextFrame() {
    if (isLive == false) {
      frame = 4;
    } else {
      if (frameCount % 3 == 0) frame++;
      if (frame == frames) frame = 0;
    }
    return spritesheet.get(frame * sw,0,sw,sh);
  }
  
  void draw(){
    image(nextFrame(),0,0);
  }
  
  void load() {
    spritesheet = loadImage("bat.png");
  }
}
