//1. spawn a bunch of creatures that move
Creature creature;
Food food;

public void setup() {
  size(800,800);
  
  creature = new Creature((int)Math.random()*width,(int)Math.random()*height);
  food = new Food((int)Math.random()*width,(int)Math.random()*height);
}

public void draw() {
  background(220);
  creature.show();
  food.show();
  creature.eat(food);
}
