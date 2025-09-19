
Emoji harold;
Emoji tim;
Emoji phil;
Emoji geronimo;
Emoji bob;
Emoji heather;

void setup() {
  size(1000, 800);
  noStroke();
  harold = new Emoji(color(255, 255, 0), 200, "Harold", 200, 100);
  tim = new Emoji(color(255, 69, 0), 300, "Tim", 800, 700);
  phil = new Emoji(color(170, 30, 1), 200, "Phil", 300, 200);
  geronimo = new Emoji(color(10, 200, 80), 80, "Geronimo", 500, 400);
  bob = new Emoji(color(0, 255, 30), 200, "Bob", 100, 600);
  heather = new Emoji(color(200, 100, 255), 100, "Heather", 0, 300);
  
}

void draw() {
  background(255, 192, 203);
  
  harold.update();
  harold.draw();
  
  tim.update();
  tim.draw();
  
  phil.update();
  phil.draw();
  
  geronimo.update();
  geronimo.draw();
  
  bob.update();
  bob.draw();
  
  heather.update();
  heather.draw();

}

void drawDots () {
  for (int d = 0; d < 100; d += 1) {
    int calculatedX = d * 30 + 20/3;
    if (calculatedX < width && (calculatedX < 200 || calculatedX > 800) || (calculatedX > 400 && calculatedX < 600)) {
      circle(calculatedX, height/2, 20);
    }
  }
}
