ArrayList<Spawn> spawns = new ArrayList<Spawn>();

void piirra_spawn() {
  for (int i = spawns.size() -1; i>= 0; i--) {
    Spawn Spawn = spawns.get(i);
    Spawn.piirra();
    Spawn.luo();
  }
}

class Spawn {
  float x, y, xx, yy, size;
  Spawn(float x, float y, float xx, float yy, float size) {
    this.x = x;
    this.y = y;
    this.xx = xx;
    this.yy = yy;
    this.size = size;
    spawns.add(this);
  }
  void piirra() {
    pushStyle();
    fill(30,30,30);
    rect(this.x, this.y, this.size, this.size);
    popStyle();

  }
  void luo () {
    if ((frameCount%200 == 0) && units.size() <= stage*2 + unit_amount) {
      new Unit(this.x,this.y, unit_size, unit_healt, "Shooter");

    }
  }
}
