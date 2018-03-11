class Ship extends GameObject
{
  // Fields!
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    // Constructor chaining. Call a constructor in the super class
    super(width * 0.5f, height  * 0.5f, 50);     
    println("In Ship DEfault Constructor");
    
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    forward.mult(speed);
    
    if (keys['W'])
    {
      pos.add(forward);
    }      
    if (keys['A'])
    {
      theta -= 0.1f;
    }
    if (keys['D'])
    {
      theta += 0.1f;
    }      
    if (keys['X'])
    {
      // Create a new bullet instance and add it to the arraylist of bullets
      Bullet bullet = new Bullet();
      bullet.pos.x = pos.x;
      bullet.pos.y = pos.y;
      bullet.theta = theta;
      bullets.add(bullet);
    }
    
    if (pos.y - halfW < 0)
      {
       theta += 0.5f;
      }
      if (pos.x + halfW > width)
      {
        theta += 0.5f;
      }
      if (pos.y + halfW > height)
      {
        theta += 0.5f;
      }
      if (pos.x < halfW)
      {
        theta += 0.5f;
      }
      
  }
  
  void render()
  {
    pushMatrix(); // reset the translation and rotation
    translate(pos.x, pos.y);
    rotate(theta); // We want rotate to happen first, so you make the call AFTER translate    
    stroke(0, 255, 255);
    line(- halfW, halfW, 0, - halfW);
    line(0, - halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(- halfW, halfW, 0, 0);
    popMatrix();
  }   
}
