void gameSetup() {
  if (test == true) {
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
    portal = loadImage("PORTAL.png");
    portalSize = 150;
    portalWarnTime = 480;
    badPGrowSpeed = 1;
    //Loading Images
    RunR1 = loadImage("NinjaRunR1.png");
    RunR2 = loadImage("NinjaRunR2.png");
    RunL1 = loadImage("NinjaRunL1.png");
    RunL2 = loadImage("NinjaRunL2.png");
    Still = loadImage("NinjaStill.png");
    FaceAway = loadImage("NinjaAway.png");
    menuBG = loadImage("menuBackground.jpg");
    gameBG = loadImage("gameBackground.png");
    ZeroLife = loadImage("0lives.png");
    OneLife = loadImage("1lives.png");
    TwoLife = loadImage("2lives.png");
    ThreeLife = loadImage("3lives.png");
    Title = loadImage("menuTitle.png");
    gameOver = loadImage("endGame.png");
    coin = loadImage("Coin.png");
    guardLeft = loadImage("guardleft.png");
    guardRight = loadImage("guardright.png");
    rollTNT = loadImage("tnt.png");
    dagger1 = loadImage("dagger.png");
    dagger2 = loadImage("dagger.png");
    dagger3 = loadImage("dagger.png");
    explosion = loadImage("explode.png");
    warnHearts = loadImage("warninglives.png");
  }
  test = false;
}