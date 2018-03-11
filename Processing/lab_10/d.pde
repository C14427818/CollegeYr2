class Bullet extends GameObject
{
  
  
  void render()
  {
    // Just draw a small vertical line
    
      stroke(100, 250, 30);
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(theta);
      line(0, -5, 0, 5);
      popMatrix();  
    
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
      
    forward.mult(speed);
    pos.add(forward);
  }
}
