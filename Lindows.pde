//Matthew Richmond 
//Jacob Potter
//Jacob is handing in the project
//Make Chrome the default browser
//DO NOT press enter in the calculator screen!!


//Username : hee
//Password heeman

int playerX;
int playerY;
//int playGame;
int keyW;
int keyA;
int keyS;
int keyD; 
int keyR;
int keyT;
int keySpace;
boolean playerDead;
int lives;
int score;
int level;
int goldCollectedLevel;
int levelPopup;
int highscore; 
int explodeX;
int explodeY;
int explodeActive;
boolean playGame0;
boolean playGame1;
boolean playGame2;
boolean playGame3;
//Objects
int goalX;
int goalY;
int badX;
int badY;
int guardX;
int guardY;

int frames;
int direction;
float guardDirectionSpeed;
int enemySpeed;

//Player Image Stuff
PImage RunR1;
PImage RunR2;
PImage RunL1;
PImage RunL2;
PImage Still;
PImage FaceAway;
float stepSwitch;
boolean moving;
int movingRight;
int movingLeft;

//portal Variables
float portalX;
float portalY;
boolean badPActive;
int badPGrowSpeed;
int badPActivateTime;
int portalSize;
int portalWarnTime;
boolean portalWarn;
PImage portal;
int portalScore;
int portalLevelTime;


//Image Variables
PImage menuBG;
PImage gameBG;
PImage ZeroLife;
PImage OneLife;
PImage TwoLife;
PImage ThreeLife;
PImage Title;
PImage gameOver;
PImage coin;
PImage guardLeft;
PImage guardRight;
PImage rollTNT;
PImage dagger1;
PImage dagger2;
PImage dagger3;
PImage explosion;
PImage warnHearts;
PImage discord; 
PImage twitter;  
PImage edge; 
PImage discordImg;
PImage calculator;
PImage paint;
PImage cal;
PImage premiumcalculator;
PImage desk2;
//Dagger variables
int dagger1X;
int dagger1Y;
int dagger2X;
int dagger2Y;
int dagger3X;
int dagger3Y;
PImage profpic;
PImage lgin1;
PImage lgin2;
String password;
String acntpassword = "heeman";
boolean login;
String username;
String acntusername = "hee";
Boolean enterUsername;
int enterPassword = 0;
//enterPassword: 0 turns it off. 1 Indicates the password is off but it does not switch back to enterUsername. 2 Indicates the password was correct.
//Desktop variables
PImage desk1;
int framess;
boolean startdiscord;
boolean startup = true;
boolean closediscord;
boolean starttwitter;
boolean closetwitter;
boolean startedge;
boolean closeedge;
boolean startdagger;
boolean closedagger;
boolean launchgamesetup;
boolean opencalculator;
boolean closecalculator;
boolean closepaint;
boolean openpaint;
boolean launchpaintsetup;
//PremiumCalculator
boolean openprmcal;
boolean closeprmcal;
//Calculator Variables
float num1;
float num2;
float answer;
boolean add;
boolean subtract;
boolean divide;
boolean multiply;
boolean operator = false;
String operation;
//Premium Calculator Variables
/**
 float prmnum1;
 float prmnum2;
 float prmanswer;
 boolean prmadd = true;
 boolean prmsubtract = false;
 boolean prmmultiply = false;
 boolean prmdivide = false;
 boolean prmsquare = false;
 boolean prmsquareroot = false;
 boolean prmcube = false;
 //Scientific Notation
 boolean prmsn = false;
 boolean prmsin = false;
 boolean prmtan = false;
 boolean prmcos = false;
 boolean prmenter = false;
 boolean prmpower = false;
 boolean prmone = false;
 boolean prmtwo = false;
 boolean prmthree = false;
 boolean prmfour = false;
 boolean prmfive = false;
 boolean prmsix = false;
 boolean prmseven = false;
 boolean prmeight = false;
 boolean prmnine = false;
 boolean prmzero = false;
 boolean prmnegative = false;
 boolean prmoperation = false;
 boolean prmclearcal = false;
 */

void setup() {
  size(1250, 700);
  rectMode(CENTER);
  ellipseMode(CENTER);
  username = "";
  password = "";
  enterUsername = true;
  //playGame = 0;
  launchgamesetup = true;
  launchpaintsetup = true;
  Images();
}



void draw() {
  println(""+frameRate);

  image(lgin1, 0, 0);
  image(profpic, 500, 50);
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





  if (enterPassword == 2) {
    login = true;
  }
  if (login == true) {
    clear();
    desktop();

    clock();
    login = false;
  }
  // Opening and Closing of Apps
  if (startdiscord == true) {

    image(discordImg, 625, 350);
    button(#FFFFFF, 1225, 0, 25, 25, 0, 0, "closediscord");
  }

  if (closediscord == true) {

    desktop();
  }
  if (starttwitter == true) {
    frameRate(1);
    launch("C:/birdie.url");
    button(#FFFFFF, 1225, 0, 25, 25, 0, 0, "closetwitter");
    starttwitter = false;

    if (startedge == false) {
      frameRate(60);
    }
  }
  if (startedge == true) { 
    frameRate(1);
    launch("C:/edge.url");
    button(#FFFFFF, 1225, 0, 25, 25, 0, 0, "closeedge");
    startedge = false;

    if (startedge == false) {
      frameRate(60);
    }
  }
  if (startdagger == true) {
    playGame0 = true;
    gameDraw();
    if (launchgamesetup) {
      gameSetup();
    }
  }
  if (opencalculator == true) {
    calculatoropen(); 
    button(#FFFFFF, 875, 50, 25, 25, 0, 0, "closecalculator");
  }
  if (closecalculator == true) {
    frameRate(60);
    desktop();
    closecalculator = false;
    opencalculator = false;
    
  }
  if (closedagger == true) {
    clear();
    desktop();
    startdagger = false;
    closedagger = false;
  }
  if (openpaint == true) {
    frameRate(1);
    launch("C:/MSpant.url");
    openpaint = false;

    if (openpaint == false) {
      frameRate(60);
    }
  }

  if (closepaint == true) {
    clear();
    desktop();
    openpaint = false;
    closepaint = false;
  }
  if (openprmcal == true) {
    fill(128, 240, 128);
    rect(500, 200, 500, 300);
    textSize(26);
    fill(255, 20, 180);
    text("Please pay $169.99 for this feature", 520, 250);
    text("We cannot guarantee it is functional", 520, 320);
    button(#FFFFFF, 973, 200, 25, 25, 0, 0, "closepremiumcal");
  }


  if (closeprmcal == true) {
closeprmcal = false;
openprmcal = false;
    desktop();
  }
}
//Key Stuff
void keyPressed() {
  gameKeys();

  if ( enterUsername == true) {
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


  if ( enterUsername == false) {
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