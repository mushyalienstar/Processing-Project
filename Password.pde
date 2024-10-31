String pass = "";

int buttonX = 65;
int buttonY = 150;

int buttonX2 = 260;
int buttonY2 = 150;

int buttonX3 = 455;
int buttonY3 = 150;

int buttonX4 = 220;
int buttonY4 = 330;

int buttonW = 120;
int buttonW2 = 200;
int buttonH = 100;
int buttonH2 = 80;
int cookies = 0;

void setup(){
  size(640, 480);
}

void button1(){
  fill(255);
  rect(buttonX, buttonY, buttonW, buttonH);
  fill(0);
  textSize(50);
  text("A", buttonX + 45, buttonY + 70);
}

void button2(){
  fill(255);
  rect(buttonX2, buttonY2, buttonW, buttonH);
  fill(0);
  textSize(50);
  text("B", buttonX2 + 45, buttonY2 + 70);
}

void button3(){
  fill(255);
  rect(buttonX3, buttonY3, buttonW, buttonH);
  fill(0);
  textSize(50);
  text("C", buttonX3 + 45, buttonY3 + 70);
}

void button4(){
  fill(255);
  rect(buttonX4, buttonY4, buttonW2, buttonH2);
  fill(0);
  textSize(50);
  text("Enter", buttonX4 + 43, buttonY4 + 60);
}

void passcheck(){
  if (pass.equals("AABCA")) println("Access Granted!");
  else{
    pass = "";
    println("Invalid");
  }
}

void mousePressed(){
  if(mouseX > buttonX && mouseX < buttonX + buttonW && mouseY > buttonY && mouseY < buttonY + buttonH){
    pass = pass + "A";
    println(pass);
  }
  else if(mouseX > buttonX2 && mouseX < buttonX2 + buttonW && mouseY > buttonY2 && mouseY < buttonY2 + buttonH){
    pass = pass + "B";
    println(pass);
  }
  else if(mouseX > buttonX3 && mouseX < buttonX3 + buttonW && mouseY > buttonY3 && mouseY < buttonY3 + buttonH){
    pass = pass + "C";
    println(pass);
  }
  else if(mouseX > buttonX4 && mouseX < buttonX4 + buttonW2 && mouseY > buttonY4 && mouseY < buttonY4 + buttonH2){
    passcheck();
  }
}

void draw(){
  background(0);
  button1();
  button2();
  button3();
  button4();
}
