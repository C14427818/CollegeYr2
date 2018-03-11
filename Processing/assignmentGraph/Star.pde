class Star
{
  
    float lastX;
    float lastY;
  
    void drawStar(float cx, float cy, float radius, int points, color c)
    {
      float thetaInc = TWO_PI / (points * 2);
      
      lastX = cx;
      lastY = cy -radius; 
      
      stroke(c);
      
      for (int i = 1 ; i <= (points * 2) ; i ++)
      {
        float theta = i * thetaInc;
        float x, y;
        float r;
        if (i % 2 == 1)
        {
          r = radius * 0.5f;
        }
        else
        {
          r = radius;        
        }
  
        x = cx + sin(theta) * r;
        y = cy -cos(theta) * r;
        line(lastX, lastY, x, y);
        lastX = x;
        lastY = y;      
      }
  
    }//end drawStar

}
