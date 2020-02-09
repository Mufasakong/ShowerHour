int SceneNr = 0;
int textx = 70;
PImage Forside;
PImage IndstilTid;
PImage Profiler;
PImage ValgTrin;
PImage Timer;

PImage BackArrow;

String[] Balsam = {"Balsamoff.png", "Balsamon.png"};
String[] BarbereSig = {"BarbereSigoff.png", "BarbereSigon.png"};
String[] BoersteTaender = {"BørsteTænderoff.png", "BørsteTænderon.png"};
String[] Haarkur = {"Hårkuroff.png", "Hårkuron.png"};
String[] Overtaenke = {"Overtænkeoff.png", "Overtænkeon.png"};
String[] Shampoo = {"Shampoooff.png", "Shampooon.png"};
String[] Saebe = {"Sæbeoff.png", "SæbeOn.png"};

int i1 = 0;
int i2 = 0;
int i3 = 0;
int i4 = 0;
int i5 = 0;
int i6 = 0;
int i7 = 0;

int num1= 4;
int num2= 5;
int num3= 9;
int numx= 1;


int cx, cy;
float sec = 0;
float minisec = 0.008;
float minisec2 = 0.04;
float secx = 0;
float secxx = 0;
float minx = 0;

float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

int arrowsize = 50;

int Pv = 0;

import processing.sound.*;
SoundFile button;
SoundFile alarm;

void setup(){
  size(450, 800);
  textAlign(CENTER);
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  Forside = loadImage("StartSide.jpg");
  IndstilTid = loadImage("IndstilTid.jpg");
  Profiler = loadImage("Profiler.png");
  ValgTrin = loadImage("Valgtrin.png");
  Timer = loadImage("Timer.jpg");
  
  button = new SoundFile(this, "Buttonpush.mp3");
  alarm = new SoundFile(this, "Alarm.mp3");
  BackArrow = loadImage("Bck.png");
  
  stroke(255);
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
  
  cx = width / 2;
  cy = height / 2+28;
  
}



void draw(){
    println(Pv);
 if (SceneNr == 0){
    Scene0Draw();
 }
  if (SceneNr == 1){
    Scene1Draw();
 }
 
 if (SceneNr == 2){
   Scene2Draw();
 }
 if (SceneNr == 3){
    Scene3Draw();
 }
 if (SceneNr == 4){
    Scene4Draw();
 }
 if (SceneNr == 5){
    Scene5Draw();
 }
 
 if ((mouseX<(30)+50/2)&&(mouseX>(30)-50/2)&&(mouseY>((30)-50/2)&&(mouseY<(30)+50/2))) 
    {
      arrowsize = 55;
      } else {
      arrowsize = 50;
      }
}

void mouseReleased(){
  if (SceneNr == 0){
    mouse0Released();
  } else if (SceneNr == 1) {
    mouse1Released();
  } else if (SceneNr == 2){
    mouse2Released();
  } else if (SceneNr == 3) {
    mouse3Released();
  } else if (SceneNr == 4) {
    mouse4Released();
  } else if (SceneNr == 5) {
    mouse5Released();
  }
}





void Scene0Draw() {
  
  fill(255);
  image(Forside, width/2, height/2, 450, 800);
  //rect(width/2, 600, 150, 75);
}

void mouse0Released(){
  if ((mouseX<(width/2)+150/2)&&(mouseX>(width/2)-150/2)&&(mouseY>600-75/2)&&(mouseY<600+75/2)) 
    {
      clear(); 
      SceneNr = 1;
      button.play();
    }
}

void Scene1Draw() {
  fill(255);
  image(Profiler, width/2, height/2, 450, 800);
  //rect(width/2, 636, 50, 50);
  if (Pv >= 1) {
    stroke(75, 15, 97);
    strokeWeight(4);
    rect(225, 275, 350, 150);
    ellipse(75, 275, 100, 100);
    fill(30);
    textSize(50);
    text("Ramses", 250, 290);
  }
  
  if (Pv >= 2) {
    fill(30);
    rect(225, 475, 350, 150);
    ellipse(75, 475, 100, 100);
    fill(255);
    textSize(50);
    text("Ursula", 250, 490);
  }
}

void mouse1Released(){
  if (Pv != 2) {
 if ((mouseX<(width/2)+50/2)&&(mouseX>(width/2)-50/2)&&(mouseY>636-50/2)&&(mouseY<636+50/2)) 
    {
      clear(); 
      textx = 35;
      SceneNr = 2;
      button.play();
    }
  }
 if (Pv >= 1) {
 if ((mouseX<225+350/2)&&(mouseX>225-350/2)&&(mouseY>275-150/2)&&(mouseY<275+150/2)) 
    {
      clear(); 
      SceneNr = 3;
      button.play();
    }
 }
  if (Pv >= 2) {
 if ((mouseX<225+350/2)&&(mouseX>225-350/2)&&(mouseY>475-150/2)&&(mouseY<475+150/2)) 
    {
      clear(); 
      SceneNr = 3;
      button.play();
    }
  }
  
}

void Scene2Draw() {
  background(ValgTrin);
  
  fill(255, 0, 0);
  noStroke();
  image(BackArrow, 30, 30, arrowsize, arrowsize);
  
  fill(0);
  textSize(50);
  if (Pv < 1) {
  text("Ramses", width/2, height/4+75);
  //ellipse(225, 115, 155, 155);
  } else {
    text("Ursula", width/2, height/4+75);  
  }
    
    noFill();
    stroke(50,255,40);
    strokeWeight(4);
    ellipse(236, 760, 105, 70);
    
     image(loadImage(Balsam[i1]), width/2, height/2+120, 200, 100);
     image(loadImage(BarbereSig[i2]), width/2-155, height/2+120, 200, 100);
     image(loadImage(BoersteTaender[i3]), width/2+155, height/2+120, 200, 100);
     image(loadImage(Haarkur[i4]), width/2, height/2+200, 200, 100);
     image(loadImage(Overtaenke[i5]), width/2-155, height/2+200, 200, 100);
     image(loadImage(Shampoo[i6]), width/2+155, height/2+200, 200, 100);
     image(loadImage(Saebe[i7]), width/2, height/2+280, 200, 100);
     
     
}

void mouse2Released(){
    if ((mouseX<(225+155/2)&&(mouseX>225-155/2)&&(mouseY>115-155/2)&&(mouseY<115+155/2))) 
    {
      clear(); 
      //ellipse(225, 115, 155, 155);
      SceneNr = 5;
      button.play();
    }
    
     if ((mouseX<(236+105/2)&&(mouseX>236-105/2)&&(mouseY>760-70/2)&&(mouseY<760+70/2))) 
    {
      clear(); 
      if (Pv <= 2){
      Pv++;
      }
      SceneNr = 3;
      button.play();
    }
    if ((mouseX<(30)+50/2)&&(mouseX>(30)-50/2)&&(mouseY>((30)-50/2)&&(mouseY<(30)+50/2))) 
    {
      clear();
      SceneNr = 1;
      button.play();
      }
    
    if ((mouseX<225+200/2)&&(mouseX>255-200/2)&&(mouseY>520-50/2)&&(mouseY<520+50/2)){
      if ((i1 == 0)){
      i1 = 1;
        } else {
      i1 = 0;
        }
    }
    if ((mouseX<70+200/2)&&(mouseX>70-200/2)&&(mouseY>520-50/2)&&(mouseY<520+50/2)){
      if ((i2 == 0)){
      i2 = 1;
        } else {
      i2 = 0;
        }
    }
    if ((mouseX<380+200/2)&&(mouseX>380-200/2)&&(mouseY>520-50/2)&&(mouseY<520+50/2)){
      if ((i3 == 0)){
      i3 = 1;
        } else {
      i3 = 0;
    }
    }
    
    if ((mouseX<225+200/2)&&(mouseX>255-200/2)&&(mouseY>600-50/2)&&(mouseY<600+50/2)){
      if ((i4 == 0)){
      i4 = 1;
        } else {
      i4 = 0;
        }
    }
    if ((mouseX<70+200/2)&&(mouseX>70-200/2)&&(mouseY>600-50/2)&&(mouseY<600+50/2)){
      if ((i5 == 0)){
      i5 = 1;
        } else {
      i5 = 0;
        }
    }
    if ((mouseX<380+200/2)&&(mouseX>380-200/2)&&(mouseY>600-50/2)&&(mouseY<600+50/2)){
      if ((i6 == 0)){
      i6 = 1;
        } else {
      i6 = 0;
      }
    }
    if ((mouseX<225+200/2)&&(mouseX>225-200/2)&&(mouseY>680-50/2)&&(mouseY<680+50/2)){
      if ((i7 == 0)){
      i7 = 1;
        } else {
      i7 = 0;
      }
    }
  
   }

void Scene3Draw() {
     image(IndstilTid, width/2, height/2, 450, 800);
     fill(0);
     text('5', 32, 775);
     text('0', 95, 775);
     text('0', 135, 775);
     image(BackArrow, 30, 30, arrowsize, arrowsize);
     
     fill(255);
     stroke(0);
     strokeWeight(4);
     ellipse(225, 520, 200, 200);
     fill(0);
     textSize(42);
     text("Start Bad", 225, 530);
  }


void mouse3Released(){
  if ((mouseX<225+200/2)&&(mouseX>225-200/2)&&(mouseY>520-200/2)&&(mouseY<520+200/2)) 
    {
      clear(); 
      SceneNr = 4;
      button.play();
      }
  if ((mouseX<(30)+50/2)&&(mouseX>(30)-50/2)&&(mouseY>((30)-50/2)&&(mouseY<(30)+50/2))) 
    {
      clear();
      SceneNr = 1;
      button.play();
      }
   }

void Scene4Draw() {
    float s = map(secx, 0, 60, 0, TWO_PI) - HALF_PI;
  
    fill(0, 150, 150);
    ellipse(width/2, height/2, 450, 450);
    fill(255);
    ellipse(width/2, height/2, 225, 225);
    image(Timer, width/2, height/2, 450, 800);
    image(BackArrow, 30, 30, arrowsize, arrowsize);
    
    fill(40, 50, 230);
    arc(width/2, height/2+25, 400, 400, 0, 2, PIE);
    fill(230, 50, 40);
    arc(width/2, height/2+25, 400, 400, 2, 4, PIE);
    fill(50, 230, 40);
    arc(width/2, height/2+25, 400, 400, 4, 5.5+QUARTER_PI, PIE);
    
    stroke(255);
    strokeWeight(8);
    line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
    
    strokeWeight(2);
    beginShape(POINTS);
      for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
      }
    endShape();
     secx = secx + minisec;
     sec = sec + minisec2;
  if (sec == 1.0000001) {
       num3= num3 - numx;
       sec = 0;
    }

    if (num1< 0) {
      num2= 0;
      num3= 0;
      num1= 0;
      numx= 0;
      sec = 0;
      minisec = 0;
      minisec2 = 0;
      alarm.loop();
    }
    if(num2< 0){
        num1= num1- 1;
        num2= 5;
        num3= 9;
    } else if(num3< 0){
        num2= num2 - 1;
        num3= 9;
       
    }
    
    fill(0);
    text(num1, 170, 775);
    text(num2, 240, 775);
    text(num3, 280, 775); 
}

void mouse4Released(){
    if ((mouseX<(30)+50/2)&&(mouseX>(30)-50/2)&&(mouseY>((30)-50/2)&&(mouseY<(30)+50/2))) 
    {
      clear();
      SceneNr = 3;
      num1= 4;
      num2= 5;
      num3= 9;
      numx= 1;
      
      sec = 0.0;
      secx = 0.0;
      secxx = 0.0;
      minx = 0.0;
      minisec = 0.008;
      minisec2 = 0.04;
      button.play();
      alarm.stop();
      }
   }
   
void Scene5Draw(){
   image(loadImage("Ikoner.png"), width/2, height/2, 450, 800);
   image(BackArrow, 30, 30, arrowsize, arrowsize);
   if ((mouseX<110+200/2)&&(mouseX>110-240/2)&&(mouseY>(310-200/2)&&(mouseY<310+200/2))) 
    {
      image(loadImage("Ring.png"), 110, 310, 250, 250);
    }
   if ((mouseX<335+200/2)&&(mouseX>335-200/2)&&(mouseY>(310-200/2)&&(mouseY<310+200/2))) 
    {
      image(loadImage("Ring.png"), 335, 310, 250, 250);
    }
   if ((mouseX<215+200/2)&&(mouseX>215-200/2)&&(mouseY>(520-200/2)&&(mouseY<520+200/2))) 
    {
      image(loadImage("Ring.png"), 215, 520, 250, 250);
    }
}

void mouse5Released(){
  if ((mouseX<(30)+50/2)&&(mouseX>(30)-50/2)&&(mouseY>((30)-50/2)&&(mouseY<(30)+50/2))) 
    {
      clear();
      SceneNr = 2;
      button.play();
      }
   if ((mouseX<110+200/2)&&(mouseX>110-240/2)&&(mouseY>(310-200/2)&&(mouseY<310+200/2))) 
    {
      image(loadImage("Ring.png"), 110, 310, 250, 250);
      clear();
      SceneNr = 2;
      button.play();
    }
   if ((mouseX<335+200/2)&&(mouseX>335-200/2)&&(mouseY>(310-200/2)&&(mouseY<310+200/2))) 
    {
      image(loadImage("Ring.png"), 335, 310, 250, 250);
      clear();
      SceneNr = 2;
      button.play();
    }
   if ((mouseX<215+200/2)&&(mouseX>215-200/2)&&(mouseY>(520-200/2)&&(mouseY<520+200/2))) 
    {
      image(loadImage("Ring.png"), 215, 520, 250, 250);
      button.play();
    }
}
   
