void desktop() {
  imageMode(CENTER);
  background(desk1); 
  fill(0);
  rect( 1130, 670, 100, 45);
  button(#FFFFFF, 45, 45, 75, 75, 0, 0, "start game discord");
  button(#FFFFFF, 45, 145, 75, 75, 0, 0, "start game twitter");
  button(#FFFFFF, 45, 245, 75, 75, 0, 0, "start game edge");
  button(#FFFFFF, 45, 345, 75, 75, 0, 0, "start game dagger");
  button(#FFFFFF, 45, 445, 75, 75, 0, 0, "start game calculator");
  button(#FFFFFF, 45, 545, 75, 75, 0, 0, "start game paint");

  discord();
  twitter();
  edge();
  dagger();
  calculator();
  paint();
  clock();
}



void discord() {
  image(discord, 80, 80);
}
void twitter() {
  image(twitter, 82, 180);
}
void edge() {
  image(edge, 85, 280);
}
void dagger() {
  image(coin, 83, 383, 75, 75);
}
void paint() {
  image(paint, 85, 580, 75, 75);
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
    }  
    if (function.toLowerCase().equals("closecalculator")) {
      closecalculator=true;
    } 
     if (function.toLowerCase().equals("start game paint")) {
      openpaint=true;
    }  
    if (function.toLowerCase().equals("closeapaint")) {
      closepaint=true;
    } 
    if (function.toLowerCase().equals("Add")) {
      add=true;
    }
    if (function.toLowerCase().equals("Subtraction")) {
      subtract=true;
    }
    if (function.toLowerCase().equals("Multiply")) {
      multiply=true;
    }
    if (function.toLowerCase().equals("Divide")) {
      divide=true;
    }
    if (function.toLowerCase().equals("Square")) {
      square=true;
    }
    if (function.toLowerCase().equals("Cube")) {
      cube=true;
    }
    if (function.toLowerCase().equals("Squareroot")) {
      squareroot=true;
    }
    if (function.toLowerCase().equals("EE")) {
      sn=true;
    }
    if (function.toLowerCase().equals("Sin")) {
      sin=true;
    }
    if (function.toLowerCase().equals("Cos")) {
      cos=true;
    }
    if (function.toLowerCase().equals("Tan")) {
      tan=true;
    }
    if (function.toLowerCase().equals("Power")) {
      power=true;
    }
    if (function.toLowerCase().equals("1")) {
      one=true;
    }
    if (function.toLowerCase().equals("2")) {
      two=true;
    }
    if (function.toLowerCase().equals("3")) {
      three=true;
    }
    if (function.toLowerCase().equals("4")) {
      four=true;
    }
    if (function.toLowerCase().equals("5")) {
      five=true;
    }
    if (function.toLowerCase().equals("6")) {
      six=true;
    }
    if (function.toLowerCase().equals("7")) {
      seven=true;
    }
    if (function.toLowerCase().equals("8")) {
      eight=true;
    }
    if (function.toLowerCase().equals("9")) {
      nine=true;
    }
    if (function.toLowerCase().equals("0")) {
      zero=true;
    }
    if (function.toLowerCase().equals("-")) {
      negative=true;
    }
    if (function.toLowerCase().equals("Clear")) {
      clearcal=true;
    }
    if (function.toLowerCase().equals("Enter")) {
      enter=true;
    }

    fill(whenpressed);
  }
  rectMode(CORNER);
  rect(cornerx, cornery, sizex, sizey);
}

void clock() {
  fill(255);
  textSize(16);
  text(second(), 1200, 685);
  text(minute(), 1170, 685);
  text(hour(), 1140, 685);
  text(":", 1190, 685);
  text(":", 1165, 685);
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
