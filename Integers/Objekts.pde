//walls
void objekts() {
  for (int o = 0; o < 5; o++) {
    walls();
    playerAmmo();
    player();
    player_healt();
  }
}
void luo_ammo () {
  if ((frameCount%300 == 0) && ammos.size() <= stage*2) {
    new Ammo(random(15, 380), random(15, 380), 10, 0, 10);
  }
}
void playerAmmo() {
  textSize(15);
  text("Ammo: " + player_Ammo, width-80, 20);
  fill(0,0,0);
}
void walls() {
  if (player_X <= (0 + player_Size/2)) {
    player_X += player_Speed;
  }
  if (player_X >= (width - player_Size/2)) {
    player_X -= player_Speed;
  }
  if (player_Y <= (0 + player_Size/2)) {
    player_Y += player_Speed;
  }
  if (player_Y >= (height - player_Size/2)) {
    player_Y -= player_Speed;
  }
}


void restart() {
  player_X = 10;
  player_Y = 10;
  healt = 5;
  gamemode = 3;
  player_Ammo = 40;
  stage = 1;
  for (int i = units.size() -1; i>= 0; i--) {
    Unit unit = units.get(i);
    units.remove(i);
  }
  for (int s = ammos.size() -1; s>= 0; s--) {
    Ammo Ammo = ammos.get(s);
    ammos.remove(s);
  }
  for (int i = spawns.size() -1; i>= 0; i--) {
    Spawn Spawn = spawns.get(i);
    spawns.remove(i);
  }
  for (int i = bullets.size() -1; i>= 0; i--) {
    Bullet bullet = bullets.get(i);
    bullets.remove(i);
  }
}

void difficult() {
  if (stage == 1) {
    stage++;
  } else if (stage == 2) {
    stage++;
  } else if (stage == 3) {
    stage++;
  } else if (stage == 4) {
    stage++;
  } else if (stage == 5) {
    stage = 1;
  }
}
void ScoreScreen() {
  textSize(40);
  text("You Died", width/2-100, height/2-50);
  text("Your Score Is " + score, width/2-150, height/2+20);
  fill(0, 0, 0);
}
