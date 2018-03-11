class Pie
{
  
    void drawPie(float[] dataset)
    {
      // Calculate the sum
      float sum = 0.0f;
      for(float f:dataset)
      {
        sum += f;
      }
      
      
      // Calculate the angle to the mouse
      float toMouseX = mouseX - radius;
      float toMouseY = mouseY - radius;  
      float angle = atan2(toMouseY, toMouseX);  
     
     
      if (angle < 0)
      {
        angle = map(angle, -PI, 0, PI, TWO_PI);
      }
      
      
      // The last angle
      float last = 0;
      
      float cumulative = 0;
      for(int i = 0 ; i < dataset.length ; i ++)
      {
        cumulative += dataset[i];
        
        float current = map(cumulative, 0, sum, 0, TWO_PI);
        // Draw the pie segment
        stroke(colors[i]);
        fill(colors[i]);
        
        float r = radius;
       
       
        if (angle > last && angle < current)
        {
          r = radius * 1.5f;
        }
        
        // Draw the arc
        arc(
           radius
           ,radius
           ,r
           ,r
           , last
           , current
           );
        last = current;       
      }
       
      
    }//end drawPie
}

