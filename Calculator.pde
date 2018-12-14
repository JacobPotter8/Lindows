void calculator(){
  PImage calculator;
  calculator = loadImage("calculator.png");
  image(calculator, 50, 450);
}




void calculatoropen(){
  
 noStroke();
 fill(0, 150, 120);
 rect(450, 50, 450,600); 
  rect(450, 50, 450, 100);
  fill(255);
  rect(475, 75, 400, 50);
  stroke(1);
 line(450, 153, 899, 153);
  button(#FFFFFF, 475, 175, 30, 80, 0, 0, "Add");
button(#FFFFFF, 575, 175, 80, 30, 0, 0, "Substract");
button(#FFFFFF, 475, 225, 80, 30, 0, 0, "Multiply");
button(#FFFFFF, 575, 225, 80, 30, 0, 0, "Divide");
button(#FFFFFF, 725, 175, 150, 30, 0, 0, "Square");
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
button(#FFFFFF, 575, 525, 80, 30, 0, 0, "Delete");
button(#FFFFFF, 650, 590, 80, 30, 0, 0, "Enter");
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
text("Delete", 600, 550);
text("0", 725, 550);
text("Enter", 650, 615);




  
  
  
  
}

void Add(boolean Add){
  if(Add == true){
  answer = num1 + num2;
  }
  
  
}
