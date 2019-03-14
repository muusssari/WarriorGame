ArrayList<Ammo> ammos = new ArrayList<Ammo>();

void piirra_ammo() {
  for (int i = ammos.size() -1; i>= 0; i--) {
    Ammo Ammo = ammos.get(i);
    Ammo.piirra();
    Ammo.saalis();
  }
}

class Ammo {
  float x, y, amount, yy, size;
  Ammo(float x, float y, int amount, int yy, int size) {
    this.x = x;
    this.y = y;
    this.amount = amount;
    this.yy = yy;
    this.size = size;
    ammos.add(this);
  }
  void piirra() {
    fill(0, 0, 0);
    rect(this.x, this.y, this.size, this.size);
  }
  void saalis() {
    if (dist(this.x, this.y, player_X, player_Y) <= this.size) {
      ammos.remove(this);
      player_Ammo += this.amount;
    }
  }
}
