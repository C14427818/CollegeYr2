void setup()
{
  size(500 , 500);
  background(0);
  
  
  
}



float[] arr = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};

int i=0;

void draw()
{
  background(0);
  
  int scale = height/125;
  int y = 0;
  int x = 0;
  float xtwo = 0;
  float ytwo = 0;
  float ygraph = 0;
  float xgraph = 0;
 
  
  stroke(255);
  line(30, 20, 30, 450);
  line(30, 450, 380, 450);
  
  
  for(i=0; i<15; i++)
  {
    y = y + 30;
    stroke(255);
    line(20, y, 30, y);
  }
      
      for(i=0; i<12; i++)
      {
        x = x + 30;
        stroke(255);
        line(x, 460, x, 450);
      }
  
 //  if (mousePressed == true) {
 //   line(mouseX, mouseY, pmouseX, pmouseY);
 // }
 
 float barWidth = width / 16.8;

    for (int j = 0 ; j < arr.length - 1 ; j ++)
  {
    
    xgraph = j * barWidth + 30;
    ygraph = height - (arr[j] * scale) + 30;
    xtwo = (j + 1) * barWidth + 30;
    ytwo = height - (arr[j+1] * scale) + 30;
    stroke(0, 255, 255);
    line(xgraph, ygraph, xtwo, ytwo);
}

}

