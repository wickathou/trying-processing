void keyReleased(){
  //if (key=='1') {
  //  currImage = images[2];
  //}
  //if (key=="2") {
  //  currImage = images[0];
  //}
  //if (key=="3") {
  //  currImage = images[0];
  //}
  //if (key=="4") {
  //  currImage = images[0];
  //}
  
  switch(key) {
  case '1':
    currImage = images[0];
    break;
  case '2':
    currImage = images[1];
    break;
  case '3':
    currImage = images[2];
    break;
  case '4':
    currImage = images[3];
    break;
  default:
    currImage = images[0];
    // code block
}
}
