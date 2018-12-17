void gameSetup() {
  if (launchgamesetup == true) {
    frameRate(60);
    imageMode(CENTER);
    rectMode(CENTER);
    dagger1X = int(random(width));
    dagger2X = int(random(width));
    dagger3X = int(random(width));
    dagger1Y = int(random(-2000, 0));
    dagger2Y = int(random(-2000, 0));
    dagger3Y = int(random(-2000, 0));
    level = 1;  
    lives = 3;
    //Enemies
    guardDirectionSpeed = 2;
    enemySpeed = 5;
    //Spawn
    playerX = int(random(width));
    playerY = int(random(250, 550));
    goalX = int(random(width));
    goalY = int(random(250, 550));
    guardX = 400;
    guardY = 300;
    badX = 2000;
    badY = 2000;
    explodeX = 2000;
    explodeY = 2000;
    //Movement
    keyW = 0;
    keyA = 0;
    keyS = 0;
    keyD = 0;
    //Portal Stuff
    portalX = width/2;
    portalY = height/2;
    portalSize = 150;
    portalWarnTime = 480;
    badPGrowSpeed = 1;
    //Loading Images
      }
  launchgamesetup = false;
}