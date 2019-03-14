//player
void player() {
  fill(0, 0, 255);
  rect(player_X, player_Y, player_Size, player_Size);
}
void player_healt() {
  pushStyle();
  stroke(255, 0, 0);
  line(player_X-(healt*2.5), player_Y-15, player_X+(healt*2.5), player_Y-15);
  fill(255,0,0);
  textSize(15);
  text("HP: " + healt, width-140, 20);
  fill(0,0,0);
  popStyle();
}
void player_move() {
  if (TUI.nappain_painettu('W')) {
    player_Y = player_Y - player_Speed;
  }

  if (TUI.nappain_painettu('A')) {
    player_X = player_X - player_Speed;
  }

  if (TUI.nappain_painettu('S')) {
    player_Y = player_Y + player_Speed;
  }
  if (TUI.nappain_painettu('D')) {
    player_X = player_X + player_Speed;
  }
}
