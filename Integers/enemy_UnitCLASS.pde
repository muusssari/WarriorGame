ArrayList<Unit> units = new ArrayList<Unit>();

void draw_units() {
  for (int i = units.size() -1; i>= 0; i--) {
    Unit unit = units.get(i);
    unit.gotHit();
    unit.display();
    unit.shoot();
    unit.moveNewPoint();
    unit.shootingCheck();
    unit.fireRate();
  }
}

class Unit extends Public_commands {
  int size;
  int health = 5;
  boolean a = false;
  int healt_bar = 10;
  String type;

  public Unit(float x, float y, int size, int health) {
    super(x, y, 0, 0, unit_speed);
    this.x = x;
    this.y = y;
    this.health = health;
    this.size = size;
    this.px = randomPoint();
    this.py = randomPoint();
    px = player_X;
    py = player_Y;
    this.healt_bar = healt_bar;
    units.add(this);
  }
  public Unit(float x, float y, int size, int health, String type) {
    super(x, y, 0, 0, unit_speed);
    this.x = x;
    this.y = y;
    this.health = health;
    this.size = size;
    this.px = randomPoint();
    this.py = randomPoint();
    px = player_X;
    py = player_Y;
    this.healt_bar = healt_bar;
    this.type = type;
    units.add(this);
  }

  void display() {
    if (health > 0) {
      pushStyle();
      stroke(0);
      fill(127);
      ellipse(x, y, size, size);
      fill(255, 0, 0);
      line(this.x- this.healt_bar, this.y-15, this.x+this.healt_bar, this.y-15);
      stroke(200);
      popStyle();
    } else if (health <= 0) {
      units.remove(this);
      score = score + 1;
      player_Ammo += 5;
    }
  }

  void moveNewPoint() {
    move();
    if (dist(this.x, this.y, px, py) <= unit_speed) {
      px = randomPoint();
      py = randomPoint();
    }
  }
  int randomPoint() {
    int point = int(random(400));
    return point;
  }
  boolean gotHit() {
    for (int i = sylyt.size() -1; i >= 0; i--) {
      Sylky s = sylyt.get(i);
      if (dist(this.x, this.y, s.x, s.y) <= 15) {
        sylyt.remove(s);
        this.health--;
        healt_bar -= 2;
        return true;
      }
    }
    return false;
  }
  boolean shootingCheck() {
    float shootRange = dist(this.x, this.y, player_X, player_Y);
    if (shootRange <= 300) {
      return true;
    } else {
      return false;
    }
  }
  boolean fireRate() {
    for (int i = bullets.size() - 1; i >= 0; i--) {
      Bullet b = bullets.get(i);
      if (dist(this.x, this.y, b.x, b.y) < 100) {
        return true;
      }
    }
    return false;
  }
  void shoot() {
    if (shootingCheck()) {
      if (!fireRate()) {
        new Bullet(this.x, this.y, player_X, player_Y, 7);
      }
    }
  }
}
