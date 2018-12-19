void paintSetup() {
  if(launchpaintsetup == true){
  background(255);
}
launchpaintsetup = false;
  }
  

void paintDraw(){
  
  noStroke();
  fill(20, 126, 156);
  if(mousePressed){
  ellipse(mouseX, mouseY, 50,50);
  }
  
  
}
