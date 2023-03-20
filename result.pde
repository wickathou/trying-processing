void drawResult(){
  
  float tileW = result.width/TILES_X;
  float tileH = result.height/TILES_Y;

  PImage buffer = target.get();

  result.beginDraw();
  result.background(#f1f1f1);

  // result.fill(0);
  result.noStroke();
  
  for (int x = 0; x < TILES_X; x++) {
    for (int y = 0; y < TILES_Y; y++) {
      int px = int(x*tileW);
      int py = int(y*tileH);
      color c = buffer.get(px,py);
      float b = brightness(c);
      // float s = map(b,0,255,1,0);

      if (b<50) {
        result.fill(0);
      } else {
        result.fill(#ffffff);
      }

      result.push();
      result.translate(x*tileW, y*tileH);
      result.rect(0,0,tileW,tileH);
      result.pop();
    }
  }
  
  result.endDraw();
}
