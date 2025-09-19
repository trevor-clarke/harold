
final int EMOJI_SIZE = 200;
final String EMOJI_NAME = "Harold";

final float K = 0.5;
final float M = 100;

float _x = width/2;
float _y = height/2;

float v_x = 1;
float v_y = 1;

float a_x = 0;
float a_y = 0.5;
















public class Car {
   int topSpeed;
   String colour;
   int currentSpeed;
   
   public Car(int topSpeed, String colour){
     this.topSpeed = topSpeed;
     this.colour = colour; 
   }
   
   public void print_specs(){
      println("Colour: " + this.colour);
      println("Top speed: " + this.topSpeed);
   }
}

void setup() {
  size(1000, 800);
  noStroke();
  
  Car myCar = new Car(55, "black");
  Car yourCar = new Car(80, "pink");

  println("myCar");
  myCar.print_specs();
  println();
  println("yourCar");
  yourCar.print_specs();
    
}








void draw() {
  background(255, 192, 203);
  drawHaroldName(100,50,25);
  text("x: " + _x, 100, 100);
  text("y: " + _y, 100, 120);
  text("vx: " + v_x, 100, 140);
  text("vy: " + v_y, 100, 160);
  text("ax: " + a_x, 100, 180);
  text("ay: " + a_y, 100, 200);
  //friction
  //a_x = -1*(K/M)*v_x;
  //a_y = -1*(K/M)*v_y;
  
  // change in velocity
  v_x = v_x + a_x;
  v_y = v_y + a_y;

  // change in position
  _x = _x + v_x;
  _y = _y + v_y;
  
  //handle boundaries
  
  //floor
  if(_y >= height - EMOJI_SIZE/2){
      float overshootY = _y - (height- EMOJI_SIZE/2);
      _y -= 2*overshootY;
      v_y *= -1;
  }
  
  //ceiling
  if(_y <= 0 + EMOJI_SIZE/2){
    float overshootY = _y - (0 + EMOJI_SIZE/2);
    _y -= 2*overshootY;
    v_y *= -1;
  }
  
  //right side
  if(_x >= width - EMOJI_SIZE/2){
     float overshootX = _x - (width - EMOJI_SIZE/2);
     _x -= 2* overshootX;
     v_x *= -1;
  }
  
  //left side
  if(_x <= 0 + EMOJI_SIZE/2){
    float overshootX = _x - (0 + EMOJI_SIZE/2);
    _x -= 2* overshootX;
    v_x *= -1;
  }

  drawHarold(_x, _y, EMOJI_SIZE);
}

void drawHarold (float x, float y, int size) {
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
  textAlign(LEFT);
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
