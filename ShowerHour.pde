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

float var = 1.00;
float var2 = 1.00;
float var3 = 1.00;
float var4 = 1.00;
float var5 = 1.00;

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

ArrayList<String> trin = new ArrayList<String>();

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
    //println(TWO_PI);
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
    textAlign(CENTER);
    text("Ramses", 250, 290);
  }
  
  if (Pv >= 2) {
    fill(30);
    rect(225, 475, 350, 150);
    ellipse(75, 475, 100, 100);
    fill(255);
    textSize(50);
    textAlign(CENTER);
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
  textAlign(CENTER);
  text("Ramses", width/2, height/4+75);
  //ellipse(225, 115, 155, 155);
  } else {
    textAlign(CENTER);
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
      if ((i1 == 0 && trin.size() <= 4)){
      i1 = 1;
      trin.add("Balsam");
        } else {
      i1 = 0;
      trin.remove("Balsam");
        }
    }
    if ((mouseX<70+200/2)&&(mouseX>70-200/2)&&(mouseY>520-50/2)&&(mouseY<520+50/2)){
      if ((i2 == 0 && trin.size() <= 4)){
      i2 = 1;
      trin.add("Barbere sig");
        } else {
      i2 = 0;
      trin.remove("Barbere sig");
        }
    }
    if ((mouseX<380+200/2)&&(mouseX>380-200/2)&&(mouseY>520-50/2)&&(mouseY<520+50/2)){
      if ((i3 == 0 && trin.size() <= 4)){
      i3 = 1;
      trin.add("Børste Tænder");
        } else {
      i3 = 0;
      trin.remove("Børste Tænder");
    }
    }
    
    if ((mouseX<225+200/2)&&(mouseX>255-200/2)&&(mouseY>600-50/2)&&(mouseY<600+50/2)){
      if ((i4 == 0 && trin.size() <= 4)){
      i4 = 1;
      trin.add("Hårkur");
        } else {
      i4 = 0;
      trin.remove("Hårkur");
        }
    }
    if ((mouseX<70+200/2)&&(mouseX>70-200/2)&&(mouseY>600-50/2)&&(mouseY<600+50/2)){
      if ((i5 == 0 && trin.size() <= 4)){
      i5 = 1;
      trin.add("Overtænke");
        } else {
      i5 = 0;
      trin.remove("Overtænke");
        }
    }
    if ((mouseX<380+200/2)&&(mouseX>380-200/2)&&(mouseY>600-50/2)&&(mouseY<600+50/2)){
      if ((i6 == 0 && trin.size() <= 4)){
      i6 = 1;
      trin.add("Shampoo");
        } else {
      i6 = 0;
      trin.remove("Shampoo");
      }
    }
    if ((mouseX<225+200/2)&&(mouseX>225-200/2)&&(mouseY>680-50/2)&&(mouseY<680+50/2)){
      if ((i7 == 0 && trin.size() <= 4)){
      i7 = 1;
      trin.add("Sæbe");
        } else {
      i7 = 0;
      trin.remove("Sæbe");
      }
    }
  
   }

void Scene3Draw() {
     image(IndstilTid, width/2, height/2, 450, 800);
     fill(0);
     textAlign(CENTER);
     textSize(42);
     text('5', 32, 775);
     text('0', 95, 775);
     text('0', 135, 775);
     image(BackArrow, 30, 30, arrowsize, arrowsize);
     textSize(25);
     textAlign(LEFT);
     
     if (trin.size() >= 1) {
     fill(0);
     text(trin.get(0), 45, 175);
     image(loadImage("Plus.png"), 350, 170, 35, 35);
     image(loadImage("Minus.png"), 390, 170, 30, 30);
     fill(230, 230, 0);
     noStroke();
     ellipse(20, 165, 30, 30);
     } 
     if (trin.size() >= 2) {
     fill(0);
     text(trin.get(1), 45, 205);
     image(loadImage("Plus.png"), 350, 200, 35, 35);
     image(loadImage("Minus.png"), 390, 200, 30, 30);
     fill(230, 40, 50);
     noStroke();
     ellipse(20, 195, 30, 30);
     } 
     if (trin.size() >= 3) {
     fill(0);
     text(trin.get(2), 45, 235);
     image(loadImage("Plus.png"), 350, 230, 35, 35);
     image(loadImage("Minus.png"), 390, 230, 30, 30);
     fill(40, 50, 230);
     noStroke();
     ellipse(20, 225, 30, 30);
     } 
     if (trin.size() >= 4) {
     fill(0);
     text(trin.get(3), 45, 265);
     image(loadImage("Plus.png"), 350, 260, 35, 35);
     image(loadImage("Minus.png"), 390, 260, 30, 30);
     fill(40, 230, 50);
     noStroke();
     ellipse(20, 255, 30, 30);
     } 
     if (trin.size() >= 5) {
     fill(0);
     text(trin.get(4), 45, 295);
     image(loadImage("Plus.png"), 350, 290, 35, 35);
     image(loadImage("Minus.png"), 390, 290, 30, 30);
     fill(106, 13, 173);
     noStroke();
     ellipse(20, 285, 30, 30);
     } 
     
     //--------------------------------------------------------------------------------------------------------------------------------------------
     stroke(255);
     strokeWeight(2);
     if(trin.size() == 2) {
     fill(230, 50, 40);
     ellipse(width/2, height/2+120, 400, 400);
     fill(230, 230, 0);
     arc(width/2, height/2+120, 400, 400, PI/2*var*var2, 3*PI/2*var*var2, PIE);
     }
     
     if(trin.size() == 3) {
     fill(230, 50, 40);
     ellipse(width/2, height/2+120, 400, 400);
     fill(40, 50, 230);
     arc(width/2, height/2+120, 400, 400, PI/2+PI/4+QUARTER_PI/2*var2, 3*PI/2*var3, PIE);
     fill(230, 230, 0);
     arc(width/2, height/2+120, 400, 400, 3*PI/2*var3, TWO_PI+PI/4-QUARTER_PI/2*var, PIE);
     }
     
     if (trin.size() == 4) {
     fill(230, 50, 40);
     ellipse(width/2, height/2+120, 400, 400);
     fill(40, 50, 230);
     arc(width/2, height/2+120, 400, 400, PI/2*var2, PI*var3, PIE);
     fill(50, 230, 40);
     arc(width/2, height/2+120, 400, 400, PI*var3, 3*PI/2*var4, PIE);
     fill(230, 230, 0);
     arc(width/2, height/2+120, 400, 400, 3*PI/2*var4, TWO_PI*var, PIE);
     }
     
     if(trin.size() == 5) {
    fill(230, 230, 0);
    ellipse(width/2, height/2+120, 400, 400);
    fill(230, 50, 40);
    arc(width/2, height/2+120, 400, 400, (TWO_PI-QUARTER_PI/2+0.08)*(var), (TWO_PI+PI/4+0.16)*(var2), PIE);
    fill(40, 50, 230);
    arc(width/2, height/2+120, 400, 400, (PI/4+0.16)*(var2), (PI/2+QUARTER_PI/2+0.1526)*(var3), PIE);
    fill(50, 230, 40);
    arc(width/2, height/2+120, 400, 400, (PI/2+QUARTER_PI/2+0.1526)*(var3), (PI+QUARTER_PI/2)*(var4), PIE);
    fill(106, 13, 173);
    arc(width/2, height/2+120, 400, 400, (PI+QUARTER_PI/2)*(var4), (3*PI/2)*(var5), PIE);
    }
    
    if ((mouseX<225+200/2)&&(mouseX>225-200/2)&&(mouseY>520-200/2)&&(mouseY<520+200/2)) {
    fill(255);
     stroke(0);
     strokeWeight(4);
     ellipse(225, 520, 200, 200);
     fill(0);
     textAlign(CENTER);
     textSize(42);
     text("Start Bad", 225, 530);
    }
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
   if (trin.size() >= 1){
  if ((mouseX<(350)+35/2)&&(mouseX>(350)-35/2)&&(mouseY>((170)-35/2)&&(mouseY<(170)+35/2))) 
    {
      var = var + 0.01;
      println(var);
      }
  if ((mouseX<(390)+35/2)&&(mouseX>(390)-35/2)&&(mouseY>((170)-35/2)&&(mouseY<(170)+35/2))) 
    {
      var = var - 0.01;
      println(var);
      }
   }
   if (trin.size() >= 2){
  if ((mouseX<(350)+35/2)&&(mouseX>(350)-35/2)&&(mouseY>((200)-35/2)&&(mouseY<(200)+35/2))) 
    {
      var2 = var2 + 0.01;
      println(var2);
      }
  if ((mouseX<(390)+35/2)&&(mouseX>(390)-35/2)&&(mouseY>((200)-35/2)&&(mouseY<(200)+35/2))) 
    {
      var2 = var2 - 0.01;
      println(var2);
      
      }
   }
   if (trin.size() >= 3){
  if ((mouseX<(350)+35/2)&&(mouseX>(350)-35/2)&&(mouseY>((230)-35/2)&&(mouseY<(230)+35/2))) 
    {
      var3 = var3 + 0.01;
      println(var3);
      }
  if ((mouseX<(390)+35/2)&&(mouseX>(390)-35/2)&&(mouseY>((230)-35/2)&&(mouseY<(230)+35/2))) 
    {
      var3 = var3 - 0.01;
      println(var3);
      }
   }
   if (trin.size() >= 4){
  if ((mouseX<(350)+35/2)&&(mouseX>(350)-35/2)&&(mouseY>((260)-35/2)&&(mouseY<(260)+35/2))) 
    {
      var4 = var4 + 0.01;
      println(var4);
      }
  if ((mouseX<(390)+35/2)&&(mouseX>(390)-35/2)&&(mouseY>((260)-35/2)&&(mouseY<(260)+35/2))) 
    {
      var4 = var4 - 0.01;
      println(var4);
      }
   }
   if (trin.size() >= 5){
  if ((mouseX<(350)+35/2)&&(mouseX>(350)-35/2)&&(mouseY>((290)-35/2)&&(mouseY<(290)+35/2))) 
    {
      var5 = var5 + 0.01;
      println(var5);
      }
  if ((mouseX<(390)+35/2)&&(mouseX>(390)-35/2)&&(mouseY>((290)-35/2)&&(mouseY<(290)+35/2))) 
    {
      var5 = var5 - 0.01;
      println(var5);
      }
   }
   
   
      
   }

void Scene4Draw() {
    float s = map(secx, 0, 60, 0, TWO_PI) - HALF_PI;
    
    stroke(255);
    strokeWeight(2);
    fill(0, 150, 150);
    ellipse(width/2, height/2, 450, 450);
    fill(255);
    ellipse(width/2, height/2, 225, 225);
    image(Timer, width/2, height/2, 450, 800);
    image(BackArrow, 30, 30, arrowsize, arrowsize);
    
    if(trin.size() == 1) {
     fill(230, 230, 0);
     ellipse(width/2, height/2+25, 400, 400);
     
    }
    //..............................................................................................................................................
    if(trin.size() == 2) {
    fill(230, 50, 40);
     ellipse(width/2, height/2+25, 400, 400);
     fill(230, 230, 0);
     arc(width/2, height/2+25, 400, 400, PI/2*var*var2, 3*PI/2*var*var2, PIE);
    
    }
    
    if(trin.size() == 3) {
    fill(230, 50, 40);
     ellipse(width/2, height/2+25, 400, 400);
     fill(40, 50, 230);
     arc(width/2, height/2+25, 400, 400, PI/2+PI/4+QUARTER_PI/2*var2, 3*PI/2*var3, PIE);
     fill(230, 230, 0);
     arc(width/2, height/2+25, 400, 400, 3*PI/2*var3, TWO_PI+PI/4-QUARTER_PI/2*var, PIE);
    
    }
    
    if(trin.size() == 4) {
    fill(230, 50, 40);
     ellipse(width/2, height/2+25, 400, 400);
     fill(40, 50, 230);
     arc(width/2, height/2+25, 400, 400, PI/2*var2, PI*var3, PIE);
     fill(50, 230, 40);
     arc(width/2, height/2+25, 400, 400, PI*var3, 3*PI/2*var4, PIE);
     fill(230, 230, 0);
     arc(width/2, height/2+25, 400, 400, 3*PI/2*var4, TWO_PI*var, PIE);
    
    }
    
    if(trin.size() == 5) {
    fill(230, 230, 0);
    ellipse(width/2, height/2+25, 400, 400);
    fill(230, 50, 40);
    arc(width/2, height/2+25, 400, 400, (TWO_PI-QUARTER_PI/2+0.08)*(var), (TWO_PI+PI/4+0.16)*(var2), PIE);
    fill(40, 50, 230);
    arc(width/2, height/2+25, 400, 400, (PI/4+0.16)*(var2), (PI/2+QUARTER_PI/2+0.1526)*(var3), PIE);
    fill(50, 230, 40);
    arc(width/2, height/2+25, 400, 400, (PI/2+QUARTER_PI/2+0.1526)*(var3), (PI+QUARTER_PI/2)*(var4), PIE);
    fill(106, 13, 173);
    arc(width/2, height/2+25, 400, 400, (PI+QUARTER_PI/2)*(var4), (3*PI/2)*(var5), PIE);
    }
    
    
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
    textSize(48);
    text(num1, 170, 775);
    text(num2, 240, 775);
    text(num3, 280, 775); 
    
    textAlign(LEFT);
    textSize(25);
     
     if (trin.size() >= 1) {
     fill(0);
     text(trin.get(0), 45+200, 175-120);
     fill(230, 230, 0);
     noStroke();
     ellipse(20+200, 165-120, 30, 30);
     } 
     if (trin.size() >= 2) {
     fill(0);
     text(trin.get(1), 45+200, 205-120);
     fill(230, 40, 50);
     noStroke();
     ellipse(20+200, 195-120, 30, 30);
     } 
     if (trin.size() >= 3) {
     fill(0);
     text(trin.get(2), 45+200, 235-120);
     fill(40, 50, 230);
     noStroke();
     ellipse(20+200, 225-120, 30, 30);
     } 
     if (trin.size() >= 4) {
     fill(0);
     text(trin.get(3), 45+200, 265-120);
     fill(40, 230, 50);
     noStroke();
     ellipse(20+200, 255-120, 30, 30);
     } 
     if (trin.size() >= 5) {
     fill(0);
     text(trin.get(4), 45+200, 295-120);
     fill(106, 13, 173);
     noStroke();
     ellipse(20+200, 285-120, 30, 30);
     } 
     
     textAlign(CENTER);
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
   
