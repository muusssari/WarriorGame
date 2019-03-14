ArrayList<Sylky> sylyt = new ArrayList<Sylky>();

void piirra_sylyt() {
  for (int i = sylyt.size() -1; i>= 0; i--) {
    Sylky sylky = sylyt.get(i);
    sylky.piirra();
    sylky.range();
  }
}


class Sylky {
  float x, y, xv, yv, koko;
  float px, py;
  float range;
  int suunta;

  public Sylky(float x, float y, float xv, float yv, float koko, float range, int suunta) {

    this.x = x;
    this.y = y;
    this.xv = xv;
    this.yv = yv;
    this.koko = koko;
    this.px = x;
    this.py = y;
    this.range = range;
    this.suunta = suunta;

    sylyt.add(this);
  }

  void piirra() {
    if (suunta == 1) {
      image(pisaraAlas, this.x, this.y, koko, koko);
    } else if (suunta == 2) {
      image(pisaraVasen, this.x, this.y, koko, koko);
    } else if (suunta == 3) {
      image(pisaraOikea, this.x, this.y, koko, koko);
    } else if (suunta == 4) {
      image(pisaraYlos, this.x, this.y, koko, koko);
    }  else if (suunta == 5) {
      image(pisaraYlos, this.x, this.y, koko, koko);
      
    }else if (suunta == 6) {
      image(pisaraYlos, this.x, this.y, koko, koko);
    }else if (suunta == 7) {
      image(pisaraYlos, this.x, this.y, koko, koko);
    }else if (suunta == 8) {
      image(pisaraYlos, this.x, this.y, koko, koko);
    }
    this.x += this.xv;
    this.y += this.yv;
    fill(126, 0, 0);
  }
  boolean range() {
    for (int i = sylyt.size() -1; i >= 0; i--) {
      Sylky s = sylyt.get(i);
      if (dist(s.x, s.y, this.px, this.py ) > this.range) {
        sylyt.remove(s);

        return true;
      }
    }
    return false;
  }
}
