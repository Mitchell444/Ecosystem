public class Creature {
  public PVector pos, vel;
  public int speed = 5;
  public float hp = 100.0;
  public boolean active = true;
  public final int SIZE = 25;
  public final color COLOR = color(30,30,200);
  
  public Creature(int x, int y) {
    pos = new PVector(x,y);
  }
  
  public void show() {
    fill(COLOR);
    circle(pos.x,pos.y,SIZE);
  }
  
  public void move() {
    vel = PVector.random2D().mult(speed);
    
    pos.add(vel);
  }
  
  public void eat(Food f) {
    if(this.pos.x <= f.pos.x +10
    && this.pos.x >= f.pos.x
    && this.pos.y <= f.pos.y + 10
    && this.pos.y <= f.pos.y){
    f.health--;
    hp++;
    
    if(f.health == 0)
    f.active = false;
    }
  }
  
  public void attack(Creature c) {
    if (
  }
}
