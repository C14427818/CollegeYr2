void setup()
{
  size(500, 500);
  background(0);
  
}

float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,58};

void drawTrend()
{
 
 float dataRange = 150.0f; 
  
 float lineWidth = width / (float)(rainFall.length - 1);
 
 float border = height * 0.1f;
 float verticalRange = height - (border * 2.0f);
 float verticalScale = verticalRange / dataRange;
 
 float horizontalRange = width - (border * 2.0f);
 

  for( int i = 0; i < rainFall.length - 1; i ++)
  {
    float x1 = border + (i * lineWidth);
    float y1 = ((height - border) - rainFall[i]);
  
    float x2 = border + ((i + 1) * lineWidth);
    float y2 = ((height - border) - rainFall[i + 1]);
    
    
    
    stroke(0, 255, 255);
    line(x1, y1, x2, y2);
  }

}


void draw()
{
  
  drawTrend();
  
}


