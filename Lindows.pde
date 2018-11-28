PImage profpic;
PImage lgin1;
PImage lgin2;
String password;
String acntpassword;
boolean login;
String username;
String acntusername;
Boolean Usernametype;

void setup(){
  
  size(1250, 700);
   profpic = loadImage("profpic.png");
   lgin1 = loadImage("lgin1.jpg");
   lgin2 = loadImage("lgin2.png");
  rectMode(CENTER);
  ellipseMode(CENTER);
  username = "";
  password = "";
Usernametype = true;
}

void draw(){
  image(lgin1, 0, 0);
image(profpic, 500, 50, 125, 125);
fill(0);
textSize(40);
text("Account", 475, 250);
text(username, 475, 350);

text(password, 475, 400);
  if(login ==true){
    clear();
    fill(150,250,60);
      app1(25,25);
}
}
void keyPressed() {
 if(Usernametype = true){
  if (keyCode == BACKSPACE) {
    if (username.length() > 0) {
      username = username.substring(0, username.length()-1);
  }  
} else if (keyCode == DELETE) {
    username = "";
} else if ( keyCode == ENTER) {
  username = "";
} else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
   username = username + key;
}
if(keyCode == TAB){
  Usernametype = false;
}
 }
 if(Usernametype = false){
  if (keyCode == BACKSPACE) {
    if (password.length() > 0) {
      password = password.substring(0, password.length()-1);
  }  
} else if (keyCode == DELETE) {
    password = "";
} else if ( keyCode == ENTER) {
    passwordCheck(password, acntpassword, username, acntusername);
    password = "";
} else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
   password = password + key;
}
 }



}
void passwordCheck(String password, String acntpassword, String username, String acntusername) {
 
    if (password == acntpassword && username == acntusername) {
      login = true;
} else {
  login = false;
}
  }