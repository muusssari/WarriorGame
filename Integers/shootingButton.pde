void keyPressed() {
	TUI.huomaa_painallus();



	if (player_Ammo > 0) {
		if (TUI.nappain_painettu(UP)) {
			if (TUI.nappain_painettu(LEFT)) {
				spit(-1,-1, 1);
			}
			else if (TUI.nappain_painettu(RIGHT)) {
				spit(1,-1,1);
			}
			else {
				spit(0,-1,1);
			}
		}
		else if (TUI.nappain_painettu(RIGHT)) {
			if (TUI.nappain_painettu(DOWN)) {
				spit(1,1,1);
			}
			else if (TUI.nappain_painettu(UP)) {
				spit(1,-1,1);
			}
			else {
				spit(1,0,1);
			}

		}
		else if (TUI.nappain_painettu(DOWN)) {
			if (TUI.nappain_painettu(LEFT)) {
				spit(-1, 1, 1);
			}
			else if (TUI.nappain_painettu(RIGHT)) {
				spit(1,1,1);
			}
			else {
				spit(0, 1, 1);
			}
		}
		else if (TUI.nappain_painettu(LEFT)) {
			if (TUI.nappain_painettu(UP)) {
				spit(-1,-1,1);
			}
			else if (TUI.nappain_painettu(DOWN)) {
				spit(-1,1,1);
			}
			else {
				spit(-1,0,1);
			}

	}


	/*

  if (TUI.nappain_painettu(LEFT)) {
    if (!(TUI.nappain_painettu(UP)) && !(TUI.nappain_painettu(DOWN)) && !(TUI.nappain_painettu(RIGHT))) {
      if (sylyt.size() <= spit_amout && player_Ammo > 0) {
        new Sylky(player_X, player_Y, -sylky_Speed*2, 0, 10, sylky_range, 2);
        player_Ammo--;
      }
    }
  }

  if ((TUI.nappain_painettu(RIGHT)) && (TUI.nappain_painettu(DOWN))) {
    if (sylyt.size() <= spit_amout && player_Ammo > 0) {
      new Sylky(player_X, player_Y, sylky_Speed*2, sylky_Speed*2, 10, sylky_range, 7);
      player_Ammo--;
    }
  }

  if ((TUI.nappain_painettu(LEFT)) && (TUI.nappain_painettu(DOWN))) {
    if (sylyt.size() <= spit_amout && player_Ammo > 0) {
      new Sylky(player_X, player_Y, -sylky_Speed*2, sylky_Speed*2, 10, sylky_range, 6);
      player_Ammo--;
    }
  }

  if ((TUI.nappain_painettu(LEFT)) && (TUI.nappain_painettu(UP))) {
    if (sylyt.size() <= spit_amout && player_Ammo > 0) {
      new Sylky(player_X, player_Y, -sylky_Speed*2, -sylky_Speed*2, 10, sylky_range, 5);
      player_Ammo--;
    }
  }

  if (TUI.nappain_painettu(DOWN)) {
    if (!(TUI.nappain_painettu(RIGHT)) && !(TUI.nappain_painettu(LEFT)) && !(TUI.nappain_painettu(UP))) {
      if (sylyt.size() <= spit_amout && player_Ammo > 0) {
        new Sylky(player_X, player_Y, 0, sylky_Speed*2, 10, sylky_range, 1);
        player_Ammo--;
      }
    }
  }

  if (TUI.nappain_painettu(RIGHT)) {
    if (!(TUI.nappain_painettu(UP)) && !(TUI.nappain_painettu(DOWN)) && !(TUI.nappain_painettu(LEFT))) {
      if (sylyt.size() <= spit_amout && player_Ammo > 0) {
        new Sylky(player_X, player_Y, sylky_Speed*2, 0, 10, sylky_range, 3);
        player_Ammo--;
      }
    }
  }
  */
}
}

void spit(float x, float y, int kuva) {
	new Sylky(player_X, player_Y, x*sylky_Speed*2, y*sylky_Speed*2, 10, sylky_range, kuva);
	player_Ammo--;

}

void keyReleased() {
  TUI.huomaa_vapautus();
}
