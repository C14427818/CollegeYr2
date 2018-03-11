void setup()
{
  background(0);
  size(500, 500);
}

int a;
int o;
int h;

void draw()
{
  background(0);
  stroke(255);
  line(150, 150,mouseX , mouseY);//hyp
  line(150, 150, 300, 150);//adj
  line(mouseX, mouseY, 300, 150);//opp
}
  
