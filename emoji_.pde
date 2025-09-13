// This is a comment. The computer ignores anything after two slahes.
// It's for human notes!

int emojiX = 500;
int emojiY = 100;
int emojiSize = 200;
int dotX = 20;

int frameCounter = 0;

String emojiName = "Harold";

void setup() {
  // The setup() block runs once, right at the beginning.
  size(1000, 800); // Makes a canvas 600 pixels wide and 400 pixels tall.
  noStroke();
  background(255, 192, 203);

}

void draw() {
  
  fill(255, 255, 0);
  circle(emojiX, emojiY, emojiSize);
  
  fill(0, 0, 0);
  float offsetX = emojiSize/6.0;
  float offsetY = emojiSize/7.0;
  circle(emojiX-offsetX, emojiY-offsetY, emojiSize/7.0);
  circle(emojiX+offsetX, emojiY-offsetY, emojiSize/7.0);
  
  offsetY = emojiSize/5.0;
  float mouthWidth = emojiSize/2.0;
  float mouthHeight = emojiSize/3.0;
  arc(emojiX, emojiY+offsetY, mouthWidth, mouthHeight, 0, PI);
  
  textSize(80);
  textAlign(CENTER);
  text(emojiName, emojiX+300, emojiY);
  
  emojiY += 10;
  
  
  
  
  
  
  
  frameCounter += 1;

  if(frameCounter < 15 || frameCounter > 20){
    circle(dotX, height/2, 20);
  };
  dotX += 30;
  
  
  println("dotX: " + dotX + " frame: " + frameCounter); 
  
  
  
  
  
  
  
  
}
