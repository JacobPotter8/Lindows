void calculator() {
  calculator = loadImage("calculator.png");
  image(calculator, 82, 482);
}




void calculatoropen() {
  button(#FFFFFF, 475, 175, 60, 30, 0, 0, "Add");
  button(#FFFFFF, 575, 175, 120, 30, 0, 0, "Substract");
  button(#FFFFFF, 475, 225, 90, 30, 0, 0, "Multiply");
  button(#FFFFFF, 575, 225, 80, 30, 0, 0, "Divide");
  button(#FFFFFF, 725, 175, 150, 30, 0, 0, "Square");
  button(#FFFFFF, 725, 280, 80, 30, 0, 0, "Cube");
  button(#FFFFFF, 725, 225, 80, 30, 0, 0, "Squareroot");
  button(#FFFFFF, 725, 325, 80, 30, 0, 0, "Power");
  button(#FFFFFF, 475, 275, 80, 30, 0, 0, "Sin");
  button(#FFFFFF, 575, 275, 80, 30, 0, 0, "Tan");
  button(#FFFFFF, 475, 325, 80, 30, 0, 0, "Cos");
  button(#FFFFFF, 575, 325, 80, 30, 0, 0, "EE");
  button(#FFFFFF, 475, 375, 80, 30, 0, 0, "1");
  button(#FFFFFF, 575, 375, 80, 30, 0, 0, "2");
  button(#FFFFFF, 725, 375, 80, 30, 0, 0, "3");
  button(#FFFFFF, 475, 425, 80, 30, 0, 0, "4");
  button(#FFFFFF, 575, 425, 80, 30, 0, 0, "5");
  button(#FFFFFF, 725, 425, 80, 30, 0, 0, "6");
  button(#FFFFFF, 475, 475, 80, 30, 0, 0, "7");
  button(#FFFFFF, 575, 475, 80, 30, 0, 0, "8");
  button(#FFFFFF, 725, 475, 80, 30, 0, 0, "9");
  button(#FFFFFF, 725, 525, 80, 30, 0, 0, "0");
  button(#FFFFFF, 475, 525, 80, 30, 0, 0, "-");
  button(#FFFFFF, 575, 525, 80, 30, 0, 0, "Clear");
  button(#FFFFFF, 650, 590, 80, 30, 0, 0, "Enter"); 
  noStroke();
  fill(0, 150, 120);
  rect(450, 50, 450, 600); 
  rect(450, 50, 450, 100);
  fill(255);
  rect(475, 75, 400, 50);
  stroke(1);
  line(450, 153, 899, 153);

  textSize(24);
  text("Add", 475, 200);
  text("Subtract", 600, 200); 
  text("x^2", 725, 200);
  text("Multiply", 475, 250);
  text("Divide", 600, 250);
  text("√x", 725, 250);
  text("Sin", 475, 300);
  text("Tan", 600, 300);
  text("x^3", 725, 300);
  text("Cos", 475, 350);
  text("EE", 600, 350);
  text("x^y", 725, 350);
  text("1", 475, 400);
  text("2", 600, 400);
  text("3", 725, 400);
  text("4", 475, 450);
  text("5", 600, 450);
  text("6", 725, 450);
  text("7", 475, 500);
  text("8", 600, 500);
  text("9", 725, 500);
  text("(-)", 475, 550);
  text("Clear", 600, 550);
  text("0", 725, 550);
  text("Enter", 650, 615);
text("" + add, 475, 375 );
  text("" + subtract, 575, 375);
  text("" + multiply, 725, 375);
  text("" + divide, 475, 425 );
  text("" + square, 575, 425 );
  text("" + cube, 725, 425);
  text("" + squareroot, 475, 475);
  text("" + sin, 575, 475);
  text("" + tan, 725, 475);
  text("" + cos, 925, 475);
  text("" + sn, 475, 375 );
  text("" + enter, 575, 375);
  text("" + power, 725, 375);
 /**
  text("" + one, 475, 375 );
  text("" + two, 575, 375);
  text("" + three, 725, 375);
  text("" + four, 475, 425 );
  text("" + five, 575, 425 );
  text("" + six, 725, 425);
  text("" + seven, 475, 475);
  text("" + eight, 575, 475);
  text("" + nine, 725, 475);
  text("" + clearcal, 925, 475);
*/
  one();
  two();
  three();
  four();
  five();
  six();
  seven();
  eight();
  nine();
  addition();
  subtract();
  multiply();
  divide();
  squared();
  cubed();
  squareroot();
  sn();
  sign();
  cosign();
  tangent();
  xy();
  clearcalculator();
  fill(0);
  if (operation == false) {
    text(num1, 795, 110);
  }
  if ((add == true) || (subtract == true) || (multiply == true) || (divide == true) || (square == true)|| (cube == true)|| (sn == true) || (squareroot == true) || (sin == true) || (cos == true) || (tan == true) || (power == true))
  {
    operation = true;
  }
}

void clearcalculator() {
  if (clearcal == true) {
    one = false;
    two = false;
    three = false;
    four = false;
    five = false;
    six = false;
    seven = false;
    eight = false;
    nine = false;
    add  = false;
    subtract  = false;
    multiply  = false;
    divide  = false;
    sn  = false;
    tan  = false;
    sin  = false;
    cos = false;
    power = false;
    square = false;
    cube = false;
    squareroot = false;
  }
}
void addition() {
  if (add == true) {
    fill(0);
    textSize(24);
    text(num1 + "+" + num2, 795, 110);
  } 
  if (enter == true) {


    answer = num1 + num2;
  } 
  //return answer;
}

void subtract() {
  if (subtract == true) {
    fill(0);
    textSize(24);
    text(num1 + "-" + num2, 45, 45);
  } 
  if (enter == true) {
    answer = num1 - num2;
  }

  //return answer;
}

void multiply() {
  if (multiply == true) {
    fill(0);
    textSize(24);
    text(num1 + "*" + num2, 480, 75);
  } 

  if (enter == true) {
    answer = num1*num2;
  }
  //return answer;
}

void divide() {
  if (divide == true) {
    fill(0);
    textSize(24);
    text(num1 + "/" + num2, 480, 75);
  } 
  if (enter == true) {
    answer = num1/num2;
  }

  //return answer;
}
void squared() {
  if (square == true) {
    fill(0);
    textSize(24);
    text(num1 + "^2", 480, 75);
  } 
  if (enter == true) {
    answer = sq(num1);
  }

  //return answer;
}
void cubed() {
  if (cube == true) {
    fill(0);
    textSize(24);
    text(num1 + "^3", 480, 75);
  } 
  if (enter == true) {
    answer = num1*num1*num1;
  }
  //return answer;
}
void squareroot() {
  if (squareroot == true) {
    fill(0);
    textSize(24);
    text(" √" + num1, 480, 75);
  }
  if (enter == true) {
    answer = sqrt(num1);
  }

 // return answer;
}
void sn() {
  if (sn == true) {
    fill(0);
    textSize(24);
    text(num1 + "*10^" + num2, 480, 75);
  }
  if (enter == true) {
    answer = num1*pow(10, num2);
  }

  //return answer;
}
void sign() {
  if (sin == true) {
    fill(0);
    textSize(24);
    text("sin(" + num1 +")", 480, 75);
  }
  if (enter == true) {
    answer = sin(num1);
  }
 // return answer;
}
void cosign() {
  if (cos == true) {
    fill(0);
    textSize(24);
    text("cos(" + num1 +")", 480, 75);
  }
  if (enter == true) {
    answer = cos(num1);
  }
  //return answer;
}
void tangent() {
  if (tan == true) {
    fill(0);
    textSize(24);
    text("tan(" + num1 +")", 480, 75);
  }
  if (enter == true) {
    answer = tan(num1);
  }
 // return answer;
}
void xy() {
  if (power == true) {
    fill(0);
    textSize(24);
    text(num1+"^" +num2, 480, 75);
  }
  if (enter == true) {
    answer = pow(num1, num2);
  }  
 // return answer;
}
void one() {
  if (one == true) {
    num1 = 1;
    if (operation == true) {
      num2 =1;
    }
  }
}
void two() {
  if (two == true) {
    num1 = 2;
    if (operation == true) {
      num2 =2;
    }
  }
}
void three() {
  if (three == true) {
    num1 = 3;
    if (operation == true) {
      num2 =3;
    }
  }
}
void four() {
  if (four == true) {
    num1 = 4;
    if (operation == true) {
      num2 =4;
    }
  }
}
void five() {
  if (five == true) {
    num1 = 5;
    if (operation == true) {
      num2 =5;
    }
  }
}
void six() {
  if (six == true) {
    num1 = 6;
    if (operation == true) {
      num2 =6;
    }
  }
}
void seven() {
  if (seven == true) {
    num1 = 7;
    if (operation == true) {
      num2 =7;
    }
  }
}
void eight() {
  if (eight == true) {
    num1 = 8;
    if (operation == true) {
      num2 =8;
    }
  }
}
void nine() {
  if (nine == true) {
    num1 = 9;
    if (operation == true) {
      num2 =9;
    }
  }
}
