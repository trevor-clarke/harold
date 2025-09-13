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
  
  for(int x = 1; x< 11; x += 1){
   print(x); 
   print(" ");
  }

}



void drawHarold (int x, int y) {
  fill(255, 255, 0);
  circle(x, y, emojiSize);
  
  fill(0, 0, 0);
  float offsetX = emojiSize/6.0;
  float offsetY = emojiSize/7.0;
  circle(x-offsetX, y-offsetY, emojiSize/7.0);
  circle(x+offsetX, y-offsetY, emojiSize/7.0);
  
  offsetY = emojiSize/5.0;
  float mouthWidth = emojiSize/2.0;
  float mouthHeight = emojiSize/3.0;
  arc(x, y+offsetY, mouthWidth, mouthHeight, 0, PI);
  
}




void draw() {
  
  background(255, 192, 203);
  
  drawHarold(300, emojiY);
  drawHarold(700, emojiY);

  
  textSize(80);
  textAlign(CENTER);
  text(emojiName, emojiX+300, 100);
  
  emojiY += 5;
  

  for(int d = 0; d < 100; d += 1){
    int calculatedX = d * 30 + 20/3;
    if(calculatedX < width && (calculatedX < 200 || calculatedX > 800) || (calculatedX > 400 && calculatedX < 600)){
      circle(calculatedX, height/2, 20);
    }
  }
  
  //circle(20, height/2, 20);
  //circle(50, height/2, 20);
  //circle(80, height/2, 20);
  //circle(110, height/2, 20);
  //circle(140, height/2, 20);
  //circle(170, height/2, 20);
  //circle(200, height/2, 20);
  
  


  
  
 
  
  
  //println("dotX: " + dotX + " frame: " + frameCounter); 
  
  
  
  
  
  
  
  
}
