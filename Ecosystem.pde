//1. spawn a bunch of creatures that move
Creature[] creatures = new Creature[10];
Food[] food = new Food[10];

public void setup() {
  size(800,800);
 spawnCreatures();
 spawnFood();
}

public void draw() {
  background(220);
  
for (int i = 0; i < creatures.length; i++){
 creatures[i].show(); 
 creatures[i].move();
}
for (int i = 0; i < food.length; i++){
 food[i].show();
 }
}

 private void spawnCreatures() {
 for (int i = 0; i < creatures.length; i++) {
  creatures[i] = new Creature((int)(Math.random()*width),(int)(Math.random()*height));
  }
 }
 
 private void spawnFood() { 
   for (int i = 0; i < food.length; i++) {
  food[i] = new Food((int)(Math.random()*width),(int)(Math.random()*height));
 }
}
