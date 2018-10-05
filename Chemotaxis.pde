Bacteria [] bob;
donutSprinkle[] dan;

void setup(){
  size(500,500);
  noCursor();
  bob = new Bacteria[10];
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Bacteria();
  }
  dan = new donutSprinkle[55];
  for(int i = 0; i < dan.length; i++){
    dan[i] = new donutSprinkle();
  }
}

void draw(){
  background(0, 119, 190);
  donut();
  for(int i = 0; i < dan.length; i++){
    dan[i].show();
  }
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].move();
  }
}

class donutSprinkle{
  int myX, myY, myColor;
  donutSprinkle(){
    myX = (int)(Math.random()*67)-33;
    myY = (int)(Math.random()*67)-33;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  
  void show(){
    fill(myColor);
    ellipse(mouseX + myX, mouseY + myY, 2.2, 2.2);
    noStroke();
    fill(0, 119, 190);
    ellipse(mouseX, mouseY, 28, 28);
  }
}

void donut(){
  fill(205, 133, 63);
  ellipse(mouseX, mouseY, 90, 90);
  fill(255, 192, 203);
  ellipse(mouseX, mouseY, 80, 80);
}

class Bacteria{
  int myX, myY, myColor;
  Bacteria(){
    myX = (int)(Math.random()*101)+200;
    myY = (int)(Math.random()*101)+200;
    myColor = color(205, 133, 63);
  }
  
  void move(){
    myX = myX + (int)(Math.random()*9)-4;
    myY = myY + (int)(Math.random()*5)-2;
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*3)+1;
    else 
      myX = myX + (int)(Math.random()*3)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*3)+1;
    else
      myY = myY + (int)(Math.random()*3)-3;
  }
  
  void show(){
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 26, 26);
  }
}