void drawTarget(){
  target.beginDraw();
  sx = mouseX;
  sy = mouseY;
  sw = 20;
  sh = 20;
  dx = mouseX;
  dy = mouseY;
  dw = 20;
  dh = 20;
  
  buffer = source.get();
  
  if(frameCount ==1) {
    target.background(#ffffff);
  }
  
  if (mousePressed){
    target.copy(buffer,sx,sy,sw,sh,dx,dy,dw,dh);
  }
  
  //if (mousePressed){
  //  target.fill(#0000ff);
  //  target.ellipse(mouseX,mouseY,30,30);
  //}
  //target.background(#00ff00);
  target.endDraw();
}
