void calculator(){
    calculator = loadImage("calculator.png");
  image(calculator, 82, 482);
  
}
void calculatoropen(){
  fill(123, 56, 150);
  rect(450, 50, 450, 125);
     frameRate(25);

  noStroke();
  fill(255);
  rect(475, 75, 400, 75); 
  fill(0);
  textSize(38);
  if(num1 > 0){
    text(""+ num1, 490, 125);
  }
  if(num2 > 0){
  text(""+num2, 620, 125);
  }
  if(answer > 0){
    text("=", 720, 120);
  text(""+answer, 760, 125);
  }
  one();
  two();
  three();
  four();
  five();
  six();
  seven();
  eight();
  nine();
  zero();
  add();
  subtract();
  multiply();
  divide();
  enter();
  clearcal();
  operation();
}
void one() {
  if (key == '1' && operator == false ) {
    num1 = 1;
  }
  if ( key == '1' && operator == true) {
    num2 = 1;
  }
}
void two() {
  if (key == '2' && operator == false) {
    num1 = 2;
  }
  if (key == '2' && operator == true) {
    num2 = 2;
  }
}
void three() {
  if (key == '3' && operator == false) {
    num1 = 3;
  }
  if (key == '3' &&  operator == true) {
    num2 = 3;
  }
}
void four() {
  if (key == '4' && operator == false) {
    num1 = 4;
  }
  if (key == '4' && operator == true) {
    num2 = 4;
  }
}
void five() {
  if (key == '5' && operator == false) {
    num1 = 5;
  }
  if (key == '5' && operator == true) {
    num2 = 5;
  }
}
void six() {
  if (key == '6' && operator == false) {
    num1 = 6;
  }
  if (key == '6' &&  operator == true) {
    num2 =6;
  }
}
void seven() {
  if (key == '7' && operator == false) {
    num1 = 7;
  }
  if (key == '7' && operator == true) {
    num2 =7;
  }
}
void eight() {
  if (key == '8' && operator == false) {
    num1 = 8;
  }
  if (key == '8' && operator == true) {
    num2 = 8;
  }
}
void nine() {
  if (key == '9' && operator == false) {
    num1 = 9;
  }
  if (key == '9' &&  operator == true) {
    num2 = 9;
  }
}
void zero() {
  if (keyPressed == true && key == '0' && num1 > 0 && operator == false) {
    num1 = num1*10;
  }
  if (keyPressed == true && key == '0' &&  operator == true) {
    num2 = num2*10;
  }
}
void add() {
  if (key == '+') {
    operator = true;
    add = true;
  }
}
void subtract() {
  if (key == '-') {
    operator = true;
    subtract = true;
  }
}
void multiply() {
  if (key == '*') {
    operator = true;
    multiply = true;
  }
} 
void divide() {
  if (key == '/') {
    operator = true;
    divide = true;
  }
}
float enter() {
  if (keyCode == 'E') {
    if (add == true) {
      answer = num1 + num2;
    }
    if (subtract == true) {
      answer = num1 - num2;
    }
    if (multiply == true) {
      answer = num1 * num2;
    }
    if (divide == true) {
      answer = num1 / num2;
    }
  }
  return answer;
}
void clearcal() {
  if (keyCode == 'C') {
    operator = false;
    add = false;
    subtract = false;
    multiply = false;
    divide = false;
    num1 = 0;
    num2 = 0;
    answer = 0;
  }
}
void operation() {
  if (add == true) {
    text("+", 570, 120);
  }
  if (subtract == true) {
    text("-", 570, 120);
  }
  if (multiply == true) {
    text("*", 570, 120);
  }
  if (divide == true) {

    text("/", 570, 120);
  }
}

  
