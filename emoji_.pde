
final int EMOJI_SIZE = 200;
final String EMOJI_NAME = "Harold";

void setup() {
  size(1000, 800);
  noStroke();
}

void draw() {
  background(255, 192, 203);
  drawHaroldName(100,50,25);

  drawHarold(300, 500, EMOJI_SIZE);
}

void drawHarold (int x, int y, int size) {
  fill(255, 255, 0);
  circle(x, y, size);

  fill(0, 0, 0);
  float offsetX = size/6.0;
  float offsetY = size/7.0;
  circle(x-offsetX, y-offsetY, size/7.0);
  circle(x+offsetX, y-offsetY, size/7.0);

  offsetY = size/5.0;
  float mouthWidth = size/2.0;
  float mouthHeight = size/3.0;
  arc(x, y+offsetY, mouthWidth, mouthHeight, 0, PI);
}

void drawHaroldName(int x, int y, int s){
  textSize(s);
  textAlign(CENTER);
  text(EMOJI_NAME, x, y);
}

void drawDots () {
  for (int d = 0; d < 100; d += 1) {
    int calculatedX = d * 30 + 20/3;
    if (calculatedX < width && (calculatedX < 200 || calculatedX > 800) || (calculatedX > 400 && calculatedX < 600)) {
      circle(calculatedX, height/2, 20);
    }
  }
}
