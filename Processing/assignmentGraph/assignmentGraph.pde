/*Author: Céin O'Rourke 
Student# C14427818*/

//note graph one does not line with 2015 as December month is not over

PImage bg;


void setup()
{
  
  size(600, 600, P3D);
  background(0);
  stroke(255);

  assignColors();//for colouring pie
  radius = width / 2; 
  
  bg = loadImage("forGraph.jpg");
  
  
  
}

    Graph graph = new Graph();
    Pie pie = new Pie();
    Cube cube = new Cube();
    Star star = new Star();
    
    int border = 40;

    
    //averaging all the 12 months for each year 
    float averageOne = 2214.04;
    float averageTwo = 2259.78;
    float averageThree = 3482.46;
    float averageFour = 3532.06;
    
    float[] dataset = {averageOne, 
    averageTwo,
    averageThree,
    averageFour
    }; 
    color[] colors = new color[dataset.length];
    
    float radius;

//colouring the pie different each runtime
void assignColors()
{
  for(int i = 0 ; i < dataset.length ; i ++)
  {
    colors[i] = color(random(0, 255), random(0, 255), random(0, 255));
  }
}



void draw()
{
   
   cube.drawCube();
   
   
       for(int stars = 0; stars < 5 ; stars ++)
        {
          star.drawStar(random(0, width), random(0, height), random(10, 50), (int)random(5, 10), color(random(100, 255), random(100, 255), 0));  
        } 
  
        
  if(key == '0')
  {
    background(0);
    cube.drawCube();
    
    for(int stars = 0; stars < 5 ; stars ++)
        {
          star.drawStar(random(0, width), random(0, height), random(10, 50), (int)random(5, 10), color(random(100, 255), random(100, 255), 0));  
        } 
    
  }
  
  if(key == '1')
  {
    
    background(bg);
    stroke(255, 0, 0);
    line( border,border,border,height-border);
    stroke(255, 0, 0);
    line( border,height-border,width-border - 30,height-border);
    graph.drawGraph();
   
    text("Global Solar Radiation in Joules/cm3 for Dublin_Airport (Monthly)", width/4, border-15); 
    
    
  }
  
  if(key == '2')
  {
    
     background(0);
     pie.drawPie(dataset); 
     text("2012", 500, 440);
     text("2013", 80, 460);
     text("2014", 100, 100);
     text("2015", 410, 90);
   
     text("Global Solar Radiation in Joules/cm3 for Dublin_Airport (Monthly Average)", width/6, border-15);
     text("Press any key to go back to menu", 400, 550);
    
   }
   
  
}//end draw
