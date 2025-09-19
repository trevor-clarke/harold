
Emoji[] emojis = new Emoji[150];

String[] names = {
  "Harold",
  "Tim",
  "Phil",
  "Billy",
  "Carl",
  "Angela",
  "Trevor",
  "Mary",
  "Paul",
  "Greg",
  "Gerald",
  "Bob"
};


color randomColour(){
  return color(random(255), random(255), random(255));
}

void setup() {
  size(1000, 800);
  noStroke();  
  
  for(int i =0; i < emojis.length; i++){
    emojis[i] = new Emoji(
      randomColour(), 
      (int)random(10, 150), 
      names[(int)random(names.length)], 
      random(width), 
      random(height)
    );
  }
}

void draw() {
  background(255, 192, 203);
  
  for(Emoji emoji : emojis){
    emoji.update();
    emoji.draw();
  }
  
  //emojis[0].update();
  //emojis[0].draw();
  
  //tim.update();
  //tim.draw();
  
  //phil.update();
  //phil.draw();
  
  //geronimo.update();
  //geronimo.draw();
  
  //bob.update();
  //bob.draw();
  
  //heather.update();
  //heather.draw();

}

void drawDots () {
  for (int d = 0; d < 100; d += 1) {
    int calculatedX = d * 30 + 20/3;
    if (calculatedX < width && (calculatedX < 200 || calculatedX > 800) || (calculatedX > 400 && calculatedX < 600)) {
      circle(calculatedX, height/2, 20);
    }
  }
}
