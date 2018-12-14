void desktop() {
  background(desk1); 
  fill(0);
 rect( 1130, 670, 100, 45);
  button(#FFFFFF, 45, 45, 80, 80, 0, 0, "start game discord");
  button(#FFFFFF, 45, 145, 80, 80, 0, 0, "start game twitter");
    button(#FFFFFF, 45, 245, 80, 80, 0, 0, "start game edge");
    button(#FFFFFF, 45, 345, 80, 80, 0, 0, "start game dagger");
    button(#FFFFFF, 45, 445, 80, 80, 0, 0, "start game calculator");
    
  discord();
twitter();
edge();

clock();
dagger();
calculator();
}



void discord() {
  image(discord, 50, 50);
}
void twitter() {
  image(twitter, 50, 150);
}
void edge() {
  image(edge, 50, 250);
}
void dagger(){
  rect( 50, 350, 75, 75);
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
      startedge=true;
        }   
      if (function.toLowerCase().equals("closeedge")) {
      closeedge=true;
      }
    if (function.toLowerCase().equals("start game dagger")) {
      startdagger=true;
    }
    if (function.toLowerCase().equals("closedagger")) {
      closedagger=true;
    } 
    if (function.toLowerCase().equals("start game calculator")) {
      opencalculator=true;
      calculatoropen();
    }  
        if (function.toLowerCase().equals("closecalculator")) {
      closecalculator=true;
    } 
    fill(whenpressed);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}

void clock(){
fill(255);
textSize(16);
text(second(),1200,685);
text(minute(),1170,685);
text(hour(),1140,685);
text(":",1190,685);
text(":",1165,685);

}
void passwordCheck(String password, String acntpassword) {

  if (password.equals(acntpassword)) {

    enterPassword = 2;
  } else {
    enterPassword = 1;
  }
}
void usernameCheck(String username, String acntusername) {
  if (username.equals(acntusername)) {
     enterUsername = false;
    enterPassword = 1;
  }
}