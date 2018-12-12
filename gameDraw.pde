void gameDraw(){
  if (playGame == 0){
   image(menuBG,625,350);
    image(Title,625,350);
    textSize(25);
    fill(#FFFFFF);
    text("Press T for instructions",30,570);
    fill(#96FF89);
    textSize(40);
    text("Press space to play",220,500);
    if(keySpace == 1){
      playGame = 1;
    }
    if(keyT == 1){
      playGame = 3;
    }
    
    
  }
  
  
  if (playGame == 1) {
    image(gameBG,625,350);
    
    
//Portal
    
    if(badPActivateTime == 600){
      badPActive = true;
    }
    if(badPActive == true){
      portalSize = portalSize + badPGrowSpeed;
      
    }
    if(portalSize > 450){
      badPActive = false;
      portalSize = 150;
      badPActivateTime = 0;
    }
    
    badPActivateTime = badPActivateTime + 1;
    image(portal,portalX,portalY,portalSize,portalSize);
    
    
    if(abs(playerX-portalX) < 50 && abs(playerY-portalY)< 50){
      portalScore += 1;
      portalLevelTime += 1;
    }
    if(badPActive == true){
      if(abs(playerX-portalX) < -165+portalSize && abs(playerY-portalY)< -165+portalSize){
        playerDead = true;
      }
    }
    if(portalScore > 59){
      score += int(random(15,50));
      portalScore = 0;
    }
    
//Next Level
    if(portalLevelTime > 300){
      level += 1;
      goldCollectedLevel = 0;
      guardDirectionSpeed += 0.2;
      portalWarnTime += 15;
      goalX = int(random(width));
      goalY = int(random(250,550));
      levelPopup = 90;
      
      if(badPGrowSpeed <200){
        badPGrowSpeed += 1;
      }
      if(level > 4){
        enemySpeed += 2;
      }
      if(level == 5){
      badX = int(random(width));
      badY = int(random(height));
    }
      portalLevelTime = 0;
    }
    
//Level Popup
    if(levelPopup > 0){
      levelPopup -= 1;
      textSize(75);
      fill(#CCFF93);
      text("Level",250,300);
      text(level,450,300);
    }
    fill(#CBC3C3);
    
//Daggers
image(dagger1,dagger1X,dagger1Y,30,60);
dagger1Y += 8;
if(dagger1Y > 650){
  dagger1X = int(random(width));
  dagger1Y = int(random(-2000,0));
}
if(abs(playerX-dagger1X) < 25 && abs(playerY-dagger1Y)< 35){
      playerDead = true;
}
if(playerDead == false){
  if(abs(playerX-dagger1X) < 25 && abs(playerY-dagger1Y)> 35 && (abs(playerX-dagger1X) < 85 && abs(playerY-dagger1Y)< 85)){
    score += 20;
  }
}
image(dagger2,dagger2X,dagger2Y,30,60);
dagger2Y += 6;
if(dagger2Y > 650){
  dagger2X = int(random(width));
  dagger2Y = int(random(-2000,0));
}
if(abs(playerX-dagger2X) < 25 && abs(playerY-dagger2Y)< 35){
      playerDead = true;
}
if(playerDead == false){
  if(abs(playerX-dagger2X) < 25 && abs(playerY-dagger2Y)> 35 && (abs(playerX-dagger2X) < 85 && abs(playerY-dagger2Y)< 85)){
    score += 20;
  }
}
image(dagger3,dagger3X,dagger3Y,30,60);
dagger3Y += 5;
if(dagger3Y > 650){
  dagger3X = int(random(width));
  dagger3Y = int(random(-2000,0));
}
if(abs(playerX-dagger3X) < 25 && abs(playerY-dagger3Y)< 35){
      playerDead = true;
}
if(playerDead == false){
  if(abs(playerX-dagger3X) < 25 && abs(playerY-dagger3Y)> 35 && (abs(playerX-dagger3X) < 85 && abs(playerY-dagger3Y)< 85)){
    score += 20;
  }
}
    
//guard ememy
    frames +=1;
  if (frames == 90) {
      direction = int(random(4));
      frames = 0;
    }
    if (direction == 0) {
      guardX += guardDirectionSpeed;
      image(guardRight,guardX, guardY,60,75);
    }
    if (direction == 1) {
      guardX -= guardDirectionSpeed;
      image(guardLeft,guardX, guardY,60,75);
    }
    if (direction == 2) {
      guardY += guardDirectionSpeed;
      image(guardLeft,guardX, guardY,60,75);
    }
    if (direction == 3) {
      guardY -= guardDirectionSpeed;
      image(guardRight,guardX, guardY,60,75);
    }
    if (direction == 4) {
      guardY -= guardDirectionSpeed;
      image(guardRight,guardX, guardY,60,75);
    }
    //Boundry for guard AI
    if (guardX < -25) {
      guardX = width +25;
    }
    if (guardY < -25) {
      guardY =height+25;
    }
    if (guardY>(height+25)) {
      guardY=-25;
    }
    if (guardX>(width+25)) {
      guardX=-25;
    }
    
//Auto Intelligents TNT
image(rollTNT,badX, badY - 50, 50, 100);

if(level > 4){
  if (playerX > badX) {
    if (random(50) < level) {
      badX +=enemySpeed;
    }
  }
  if (playerX < badX) {
    if (random(50) < level) {
      badX -=enemySpeed;
    }
  }
  if (playerY > badY) {
    if (random(50) < level) {
      badY +=enemySpeed;
    }
  }
  if (playerY< badY) {
    if (random(50) < level) {
      badY -=enemySpeed;
    }
  }
}

    
//goal and goal colour
    image(coin,goalX, goalY,50,50);

 //hitboxes and change goal location
    if (abs(playerX-goalX) < 50 && abs(playerY-goalY)< 50) {
      score +=250;
      goldCollectedLevel += 1;
      if(goldCollectedLevel > 4){
        goalX = 2000;
        goalY = 2000;
      }else{
      goalX = int(random(width));
      goalY = int(random(250,550));
      }
    }
     if (abs(playerX-badX) < 50 && abs(playerY-badY)< 50) {
      playerDead = true;
      explodeActive = 120;
      explodeX = badX;
      explodeY = badY;
      badX = int(random(width));
      badY = int(random(height));
    }
    if (abs(playerX-guardX) < 50 && abs(playerY-guardY)< 50) {
       playerDead = true;
    }

 image(explosion,explodeX,explodeY,300,300);
    if(explodeActive > 1){
      explodeActive -= 1;
    }else{
      explodeX = 2000;
      explodeY = 2000;
    }


    
//Movement
      if (keyW == 1) {  
        playerY = playerY - 5;
        if(movingLeft<1 && movingRight<1){
          image(FaceAway,playerX, playerY,50,100);
        }
      }
      if (keyS == 1) {  
        playerY = playerY + 5;
         if(movingLeft<1 && movingRight<1){
          image(Still,playerX, playerY,50,100);
         }
      }
      if (keyA == 1) {  
        playerX = playerX - 5;
        movingLeft = 1;
            stepSwitch = stepSwitch + 1;
        if(stepSwitch<16){
          image(RunL1,playerX, playerY,75,100);
        }
        if(stepSwitch>15){
          image(RunL2,playerX, playerY,75,100);
        }
      }else{
        movingLeft = 0;
      }
      
      
      if (keyD == 1) {  
        playerX = playerX + 5;
        movingRight = 1;
            stepSwitch = stepSwitch + 1;
        if(stepSwitch<16){
          image(RunR1,playerX, playerY,75,100);
        }
        if(stepSwitch>15){
          image(RunR2,playerX, playerY,75,100);
        }
      }else{
        movingRight = 0;
      }  
      if(keyPressed){
    if(key=='w' || key=='s' || key=='a' || key=='d'){
      moving = true;
    }}else{
      moving = false;
    }
      if(moving == false){
       image(Still,playerX,playerY,50,100);
      }
      
    if(stepSwitch>30){
      stepSwitch = 0;
    }
    
//Lives
    if(lives == 0){
      image(ZeroLife,650,50,198,66);
    }
     if(lives == 1){
      image(OneLife,650,50,198,66);
    }
     if(lives == 2){
      image(TwoLife,650,50,198,66);
    }
     if(lives == 3){
      image(ThreeLife,650,50,198,66);
    }
//PortalWarning
    if (badPActivateTime > portalWarnTime){
      image(warnHearts,650,50,198,66);
    }
    
    textSize(35);
    text("Score:",30,40);
    text(score,140,42);
    textSize(50);
    text(level,30,540);
    textSize(25);
    text("Best:",30,80);
    text(highscore,30,105);
    
    
//Boundry
    if (playerX<-25) {
      playerX=width+25;
    }
    if (playerY<50) {
      playerY= 50;
    }
    if (playerY>(550)) {
      playerY= 550;
    }
    if (playerX>(width+25)) {
      playerX=-25;
    }
    
//Player Dead
    if(playerDead == true){
      playerX = int(random(width));
      playerY = int(random(250,550));
      lives = lives - 1;
      badPActive = false;
      portalSize = 150;
      badPActivateTime = 0;
      playerDead = false;
    }
    
  }
  
  if(score > highscore){
    highscore = score;
  }
  
//No Lives Left
  if(lives < 1){
    playGame = 2;
    level = 1;
    goldCollectedLevel = 0;
    badX = 2000;
    badY = 2000;
    guardDirectionSpeed = 2;
    enemySpeed = 5;
    playerX = int(random(width));
    playerY = int(random(250,550));
    goalX = int(random(width));
    goalY = int(random(250,550));
    guardX = 400;
    guardY = 300;
    portalWarnTime = 480;
    badPGrowSpeed = 1;
    badPActive = false;
    badPActivateTime = 0;
    portalSize = 150;
    portalWarn = false;
    
    lives = 3;
  }
  
//Game Over
  if(playGame==2){
    image(gameOver,400,300,800,600);
    textSize(50);
    text("Score:",250,490);
    text(score,400,490);
    text("Highscore:",250,540);
    text(highscore,520,540);
    textSize(20);
    fill(#CBC3C3);
    text("Click anywhere to continue...",270,580);
    
    if(mousePressed){
      playGame = 0;
      score = 0;
    }
  }
  if(keyR == 1){
    highscore = 0;
  }
  
  if(playGame == 3){
    fill(#000000);
    rect(400,300,800,600);
    fill(#FFFFFF);
    textSize(23);
    text("- You have 3 lives.",30,30);
    text("- Dodge ememies and falling daggers.",30,60);
    text("- To get points, collect coins, stand in the portal,,",30,90);
    text("    or get close calls with falling daggers.",30,120);
    text("- You can collect 5 coins per level.",30,150);
    text("- To proceed to the next level,",30,180);
    text("    stand in the portal for a total of 5 seconds.",30,210);
    text("- The portal will go unstable, your lives turn black as a warning.",30,240);
    text("- The unstable portal will consume a life if you are cought in it.",30,270);
    text("Click anywhere to continue...",30,550);
    
    
    if(mousePressed == true){
      playGame = 0;
    }
  } 
  
}