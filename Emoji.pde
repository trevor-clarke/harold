
final float K = 0.5;
final float M = 100;

public class Emoji {
  color colour;
  int size;
  String name;

  float x, y;
  float vx, vy;
  float ax, ay;

  public Emoji(color colour, int size, String name, float x, float y) {
    this.x = x;
    this.y = y;

    this.colour = colour;
    this.size = size;
    this.name = name;

    this.vx = random(-2, 2);
    this.vy = random(-2, 2);

    this.ax = 0;
    this.ay = 0;
  }

  public void draw() {
    fill(this.colour);
    circle(this.x, this.y, this.size);

    fill(0, 0, 0);
    float offsetX = this.size/6.0;
    float offsetY = this.size/7.0;
    circle(this.x-offsetX, this.y-offsetY, this.size/7.0);
    circle(this.x+offsetX, this.y-offsetY, this.size/7.0);

    offsetY = this.size/5.0;
    float mouthWidth = this.size/2.0;
    float mouthHeight = this.size/3.0;
    arc(this.x, this.y+offsetY, mouthWidth, mouthHeight, 0, PI);


    textSize(25);
    textAlign(LEFT);
    text(this.name, this.x, this.y);
  }

  public void update() {

    //friction
    //this.ax = -1*(K/M)*this.vx;
    //this.ay = -1*(K/M)*this.vy;

    //change in velocity
    this.vx = this.vx + this.ax;
    this.vy = this.vy + this.ay;

    //change in position
    this.x = this.x + this.vx;
    this.y = this.y + this.vy;

    //handle boundaries

    //floor
    if (this.y >= height - this.size/2) {
      float overshootY = this.y - (height- this.size/2);
      this.y -= 2*overshootY;
      this.vy *= -1;
    }

    //ceiling
    if (this.y <= 0 + this.size/2) {
      float overshootY = this.y - (0 + this.size/2);
      this.y -= 2*overshootY;
      this.vy *= -1;
    }

    //right side
    if (this.x >= width - this.size/2) {
      float overshootX = this.x - (width - this.size/2);
      this.x -= 2* overshootX;
      this.vx *= -1;
    }

    //left side
    if (this.x <= 0 + this.size/2) {
      float overshootX = this.x - (0 + this.size/2);
      this.x -= 2* overshootX;
      this.vx *= -1;
    }
  }
}
