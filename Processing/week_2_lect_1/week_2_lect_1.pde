void setup()
{
  size(500,500);
 
  fill(0);
  stroke(255);
  
  x=width/2;
  y=height/2;
}

float x,y=0;
int rad=25;
int speed=2;
int up=0;
float theta=0;
int radius=20;
int col1, col2, col3=5;

void draw()
{
  col1++;
  col2++;
  col3--;
  
  x= (width/2) + sin(theta)*radius;
  y= (height/2) + cos(theta)*radius;
  
  theta +=0.1f;
  radius +=1;
  
  fill(col1, col2, col3);
  ellipse(x, y , 50, 50);
  //ellipse(x-10, y-10, 5, 5);
  //ellipse(x+10, y-10, 5, 5);
  //ellipse(x, y, 5, 5);
  //line(x-10, y+10, x+10, y+10);
  
  
  
/* if(x > width-25 || x < rad )
 {
   speed *= -1;
 }
 
  x= x + speed;
  
  if(x > width -25 )
  {
    speed=0;
    up= -1;
    x=width-rad
  }
  y= y += up;
  
  if(y< rad)
  {
    speed=-2;
    up=0;
    y=rad;
  }
  if(x< rad)
  {
    speed=2;
    up=0;
    x=rad;
  }
  if(y>height-rad)
  {
    speed=2;
    up=0;
    y=height-rad;
  }
  */
}
  

