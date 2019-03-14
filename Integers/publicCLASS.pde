public class Public_commands {
  float x,y, px,py, v;
  public Public_commands(float x, float y, float px, float py, float v ) {
    this.x = x;
    this.y = y;
    this.px = px;
    this.py = py;
    this.v = v;
  }
  public void move() {
    float range = dist(this.x, this.y, this.px, this.py);
    this.x += v*(px - x)/range;
    this.y += v*(py - y)/range;
    
  }
}
