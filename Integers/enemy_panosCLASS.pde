ArrayList<Bullet> bullets = new ArrayList<Bullet>();

void piirra_bullet() {
  for (int i = bullets.size() -1; i>= 0; i--) {
    Bullet bullet = bullets.get(i);
    bullet.checkhit();
    bullet.piirra();
    bullet.move();
  }
}

class Bullet extends Public_commands {
  int koko;

  public Bullet(float x, float y, float px, float py, int koko) {
  super(x,y,px,py, panos_Speed);
    this.koko = koko;
    bullets.add(this);
  }

  void piirra() {
    fill(126, 0, 0);
    ellipse(this.x, this.y, this.koko, this.koko);
  }

  void checkhit() {
    if (dist(this.x, this.y, this.px, this.py) <= panos_Speed) {
      bullets.remove(this);
    } else if (dist(this.x, this.y, player_X, player_Y) <= player_Size) {
      bullets.remove(this);
      healt = healt -1;
    }
  }
}
