import tui.*;

//Player
float player_Size = 10;
float player_X = 20;
float player_Y = 20;
float player_Speed = 1.8;
PImage pisaraAlas;
PImage pisaraVasen;
PImage pisaraOikea;
PImage pisaraYlos;
int score = 0;
int healt = 5;
int player_Ammo = 40;

// sylky
int sylky_Speed = 2;
int sylky_range = 200;
int spit_amout = 5;
//enemy_unit
float spawnpoint1x = 10;
float spawnpoint1y = 400/2;
float spawnpoint2x = 390;
float spawnpoint2y = 400/2;
int unit_size = 20;
int unit_healt = 5;
float unit_speed = 2;
float spawn_size = 20;
float panos_Speed = 2.5;
float unit_amount = 0;
// gamemode
int gamemode = 1;
int stage = 1;

void setup() {
  size(400, 400, P2D);
  frameRate(40);
  TUI.aloita(this);
  imageMode(CENTER);
  rectMode(CENTER);

  pisaraAlas = loadImage("pisaraAlas.png");
  pisaraVasen = loadImage("pisaraVasen.png");
  pisaraOikea = loadImage("pisaraOikea.png");
  pisaraYlos = loadImage("pisaraYlos.png");
}
