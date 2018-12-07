void desktop() {
  desk1 = loadImage("desktop1.jpg");
  image(desk1, 0, 0, width, height ); 
  fill(0);
  button(#FFFFFF, 45, 45, 80, 80, 0, 0, "start game discord");
  button(#FFFFFF, 45, 145, 80, 80, 0, 0, "start game twitter");
  button(#FFFFFF, 45, 245, 80, 80, 0, 0, "start game edge");
clock();
  discord();
twitter();
edge();
}



void discord() {
  PImage discord; 
  discord = loadImage("accord.png");
  image(discord, 50, 50, 75, 75);
}
void twitter() {
  PImage twitter; 
  twitter = loadImage("twitter.png");
  image(twitter, 50, 150, 75, 75);
}
void edge() {
  PImage edge; 
  edge = loadImage("edge.png");
  image(edge, 50, 250, 75, 75);
}




void button(color basecolour, float cornerx, float cornery, float sizex, float sizey, color whenhovered, color whenpressed, String function) {
  fill(basecolour);
  if (cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    fill(whenhovered);
  }
  if (mousePressed && cornerx<mouseX && mouseX<(cornerx+sizex) && cornery<mouseY && mouseY<(cornery+sizey)) {
    if (function.toLowerCase().equals("background")) {
      background(0);
    }
    if (function.toLowerCase().equals("start game discord")) {
      startdiscord=true;
    }
    if (function.toLowerCase().equals("closediscord")) {
      closediscord=true;
    }
    if (function.toLowerCase().equals("start game twitter")) {
      starttwitter=true;
    }
    if (function.toLowerCase().equals("closetwitter")) {
      closetwitter=true;
    }
    if (function.toLowerCase().equals("start game edge")) {
      starttwitter=true;
    }
    if (function.toLowerCase().equals("closeedge")) {
      closeedge=true;
    }
    fill(whenpressed);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}
void clock(){


textSize(16);
text(second(),1200,675);
text(minute(),1150,675);
text(hour(),1125,675);
text(":",1190,675);
text(":",1140,675);


}