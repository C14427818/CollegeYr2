void setup()
{
  size(500, 500);
  background(0);
  
}

void draw()
{
  PVector a = new PVector();
  PVector b = new PVector(10.0f, 10.0f);
  
  a = new PVector(20, 20);
  b = new PVector(-5, -7);
  
  a.mult(2);// a becomes 40, 40
  a.add(b);// a becomes 35, 33
  b.add(a);// b becomes 30, 36
  a.sub(2, 2, 0);// a becomes 33, 31
  b.mult(3);// b becomes 90, 78
  b.sub(a);// b becomes 57, 47
  println(a);
  println(b);
  
  a.x = 10;
  a.y = 10;
  b.x = 20;
  b.y = 20;
  
  b = a;// pointer b now points at a in memory 
  a.x = 30;
  
  println(b.x);
}  
