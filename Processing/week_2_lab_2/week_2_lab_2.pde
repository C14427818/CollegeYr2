void setup()
{
  size(500,500);
  background(0);
}

 
  int centx=120;
  int centy=100;
  int var = -2;
  int var1 = 2;
  boolean click =false;
  
void draw()
{
  background(0);
  
  fill(255);
  ellipse(centx, centy, 20, 20); 
  
  
  centx += var1;//move circle 
  centy += var;
  
  if(centy<10)//to make the ball bounce off top wall
  {
    var ++;
  }
  else if(centy>490)//to make ball bounce off bottom wall
  {
    var --;
  }
 
  if(centx<10)//make ball bounce off left wall
  {
    var1 ++;
  }
  else if(centx>490)//make ball bounce off right wall
  {
    var1 --;
  }
  
  
  point(mouseX,mouseY);
  println(mouseX,mouseY);
  

  fill(127);
  rect(166, 166,width/3,height/3);
  
  if(click)
  {
    fill(255, 0, 0);
    rect(166, 166,width/3,height/3);
  }
  else
  {
    if(mouseX > 166 && mouseX < 333 && mouseY >170 && mouseY < 335)//to make square turn blue when mouse is over it
   {
    fill(0,0,255);
    rect(166, 166,width/3,height/3);
   }
  }
  
  
  
}//end draw
  

void mousePressed()
{
  click = !click; 
  
}

