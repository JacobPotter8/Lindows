void desktop(){
  desk1 = loadImage("desktop1.jpg");
    image(desk1, 0, 0, width, height ); 
    fill(0);
    button(#FFFFFF, 45,45,90,90,0,0,"start game discord");
    discord(25, 25); 
}



void discord(int iconX, int iconY){
PImage discord; 
  discord = loadImage("accord.png");
  image(discord,50,50,75,75);
}




void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered, color whenpressed, String function) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  if (mousePressed && cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    if(function.toLowerCase().equals("background")){
      background(0);
    }

     if(function.toLowerCase().equals("start game discord")){
      startdiscord=true;
    }
    if(function.toLowerCase().equals("closediscord")){
      closediscord=true;
    }
    
    fill(whenpressed);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}