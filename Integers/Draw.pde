void draw() {
  background(200);


  if (healt <= 0) {
    restart();
  }


  // MAIN MENU
  if (gamemode == 1) {
    draw_bttons();
    textSize(40);
    text("Warrior", (width/2)/1.5, 40);
    text(stage, width/2.2, height/2+80);
    while (buttons.size() < 2){
    new Button(width/2, height/2-50, 80, 50, "Play", 1);
    new Button(width/2, height/2+5, 80, 50, "Stage", 2);

    }
  }

  // GAME
  if (gamemode == 2) {
    for (int i = buttons.size() -1; i>= 0; i--) {
    Button button = buttons.get(i);
    buttons.remove(button);
    }
    objekts();
    luo_ammo();
    piirra_ammo();
    player_move();
    draw_units();
    piirra_sylyt();
    piirra_bullet();
    piirra_spawn();
    while (spawns.size() < stage) {
      new Spawn(random(20, 350), random(100, 350), 1, 1, 20);
    }
    if (score > 10) {
      unit_amount = stage;
      if (score > 20) {
        unit_amount += stage;
      }
    }
  }
  if (gamemode == 3) {
    draw_bttons();
    ScoreScreen();
    while(buttons.size() < 1){
      new Button(width/2, height/2+100, 80, 50, "Menu", 3);
    }
  }
}

void mousePressed() {
  click_bttons();
}
