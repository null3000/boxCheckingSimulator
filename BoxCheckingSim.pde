float boxX = height+200;
float boxY =height+200;
int score=0;
int time =10;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  frameRate(60);
  cursor(CROSS);
  textSize(64);
  text(score, 40, 60);


  rect(boxX, boxY, 50, 50);

  if (mouseX>boxX && mouseX < (boxX+50) && mouseY > boxY && mouseY <boxY+50) {
    fill(0, 255, 0);
  } else {
    fill(255, 0, 0);

    if (boxX-25<0 || boxX + 25 > width) {
      boxX = width/2;
      boxY = height/2;
    }
    if (boxY-25<0|| boxY-25>width) {
      boxY = height/2;
      boxX = width/2;
    }
  }
  if (score >= 500) {
    background(0);
    textSize(32);
    text("You've Wasted Your Life, look at you!", width/8, height/2);
    text("I mean honestly, no way you just spent 20 ", width/14, height/1.8);
    text("minutes clicking a box.", width/14, height/1.6);
    text("Go outside, touch some grass", width/14, height/1.4);
  }
  if (score<0) {
    background(0);
    textSize(32);
    text("Not only did you lose, you are a loser", width/8, height/2);
    text("Press any key to fail again", width/8, height/1.8);
  }
}

void mousePressed() {

  if (mousePressed) {
    background(255);
  } else {
    background(0);
  }
  if (mouseX>boxX && mouseX < (boxX+200) && mouseY > boxY && mouseY <boxY+100) {
    boxY =random(0, height-50);
    boxX =random(0, width-50);
    score ++;
    background(0);
  } else {
    score=-1;
  }
}

void keyPressed() {
  background(0);
  score=0;
  boxX = height+200;
  boxY =height+200;
}
