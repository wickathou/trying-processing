PImage[] images;

PImage buffer;
PImage currImage;
  
  
PGraphics source;
PGraphics target;
PGraphics result;

int POSTER_W = 580;
int POSTER_H = 810;

float TILES_X = POSTER_W/5;
float TILES_Y = POSTER_H/5;

int sx,sy,sw,sh,dx,dy,dw,dh;

void setup(){
  size(1740,810);
  source = createGraphics(POSTER_W,POSTER_H);
  target = createGraphics(POSTER_W,POSTER_H);
  result = createGraphics(POSTER_W,POSTER_H);
  
  images = new PImage[4];
  images[0] = loadImage("1.png");
  images[1] = loadImage("2.png");
  images[2] = loadImage("3.jpg");
  images[3] = loadImage("4.png");
  currImage = images[0];
}

void draw(){
  background(#f1f1f1);
  drawSource();
  drawTarget();
  drawResult();
  
  image(source,0,0);
  image(target,POSTER_W,0);
  image(result,POSTER_W*2,0);
  noFill();
  stroke(#00ff00);
  strokeWeight(3);
  rect(mouseX,mouseY,sw,sh);
  rect(mouseX+POSTER_W,mouseY,sw,sh);
}
