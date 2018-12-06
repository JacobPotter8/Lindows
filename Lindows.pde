PImage profpic;
PImage lgin1;
PImage lgin2;
String password;
String acntpassword = "qwerty";
boolean login;
String username;
String acntusername = "h";
Boolean Usernametype;
int Passwordtype = 0;
//Desktop variables
PImage desk1;
boolean startdiscord = false;
boolean startup = true;
boolean closediscord;


void setup() {

  size(1250, 700);
  profpic = loadImage("profpic.png");
  lgin1 = loadImage("lockscreen1.jpg");
  lgin2 = loadImage("lgin2.png");
  rectMode(CENTER);
  ellipseMode(CENTER);
  username = "";
  password = "";
  Usernametype = true;
}

void draw() {
  image(lgin1, 0, 0);
  image(profpic, 500, 50, 125, 125);
  fill(255, 0, 0);
  textSize(40);
  text("Account", 475, 250);
  text("Username:", 250, 350);
  text("Password:", 250, 400);
  text(username, 475, 350);
  text(password, 475, 400);
  //text(""+Usernametype, 200, 200);
  //text(""+login, 100, 200);
  //text(""+Passwordtype, 100, 100);

 



  if (Passwordtype == 2) {
    login = true;
  }
  if (login == true) {
    clear();
   desktop();
    
   clock();
  }
  if (startdiscord == true) {
    PImage discordImg;
    discordImg = loadImage("discordimage.png");
    image(discordImg, 0, 0, width, height);
    button(#FFFFFF, 1225, 0, 25, 25, 0, 0, "closediscord");
    
  }

  if (closediscord == true) {

 desktop();
  
  }
}


void keyPressed() {
  if (Usernametype == true) {
    if (keyCode == BACKSPACE) {
      if (username.length() > 0) {
        username = username.substring(0, username.length()-1);
      }
    } else if (keyCode == DELETE) {
      username = "";
    } else if ( keyCode == ENTER) {
      usernameCheck(username, acntusername);
    } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode != TAB) {
      username = username + key;
    }
  }

  if (Usernametype == false) {
    if (keyCode == BACKSPACE) {
      if (password.length() > 0) {
        password = password.substring(0, password.length()-1);
      }
    } else if (keyCode == DELETE) {
      password = "";
    } else if ( keyCode == ENTER) {
      passwordCheck(password, acntpassword);
    } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode != TAB) {
      password = password + key;
    }
  }
}
void passwordCheck(String password, String acntpassword) {

  if (password.equals(acntpassword)) {

    Passwordtype = 2;
  } else {
    Passwordtype = 1;
  }
}
void usernameCheck(String username, String acntusername) {
  if (username.equals(acntusername)) {
    Usernametype = false;
    Passwordtype = 1;
  }
}