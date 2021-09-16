Player player;
Enemy[] enemies = new Enemy[20];

public void setup(){
  size(800,400);
  player = new Player(50,height/2);
  enemy = new Enemy(4,5);
  spawnEnemies();
}

public void draw(){
  background(200);
  player.show();
  player.move();
  for (int i = 0; i < 20; i++) {
     enemies[i].show();
  }
  
  
}
public void keyPressed() {
  if (key == 'w') {
    player.vy = -player.SPEED;
  }
}
private void spawnEnemies(){
  for (int i = 0; i < 20; i++) {
     enemies[i] = new Enemy((int)Math.random()*50,(int)Math.random()*50);
  }
}
