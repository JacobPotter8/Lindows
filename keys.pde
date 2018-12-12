  
   void gameKeys(){
       if(key == 'w' || key == 'W'){
         keyW = 1;
    }
       if(key == 's' || key == 'S'){
         keyS = 1;
    }
       if(key == 'a' || key == 'A'){
         keyA = 1;
    }
       if(key == 'd' || key == 'D'){
         keyD = 1;
    }
    if(key == 'r' || key == 'R'){
         keyR = 1;
    }
    if(key == ' '){
         keySpace = 1;
    }
    if(key == 't' || key == 'T'){
         keyT = 1;
    }
  }
  
  void keyReleased(){
           if(key == 'w' || key == 'W'){
         keyW = 0;
    }
       if(key == 's' || key == 'S'){
         keyS = 0;
    }
       if(key == 'a' || key == 'A'){
         keyA = 0;
    }
       if(key == 'd' || key == 'D'){
         keyD = 0;
    }
       if(key == 'r' || key == 'R'){
         keyR = 0;
    }
    if(key == ' '){
         keySpace = 0;
    }
    if(key == 't' || key == 'T'){
         keyT = 0;
    }
  }
  int playerX;
int playerY;
int playGame;
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

//Dagger variables
int dagger1X;
int dagger1Y;
int dagger2X;
int dagger2Y;
int dagger3X;
int dagger3Y;
