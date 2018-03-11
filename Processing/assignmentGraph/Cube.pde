class Cube
{
    float a = 0;
    float r = 0;
    float b = 0;
    float t = 0;

  
 void drawCube() 
 {
    
    background(0);
    
    
      pushMatrix();
      
      translate(200, 300, map(noise(a), 0, 1, -250, 500));
      rotateY(r);
      box(80);
      a = a + 0.003;
      r = r + 0.01;
      fill(0, 200, 250);
      stroke(random(0, 255), random(0, 255),random(0, 255));
      
      stroke(255, 0, 0);
      text("FOR GRAPH PRESS #1", -60, -80);
    
    
      popMatrix();
    
      pushMatrix();
      
      translate(400, 300, map(noise(b), 0, 1, -250, 500));
      rotateY(t);
      box(80);
      b = b - 0.003;
      t = t - 0.01;
      fill(255, 255, 0);
      stroke(random(0, 255), random(0, 255),random(0, 255));
    
    
      stroke(204, 102, 0);
      text("FOR PIE PRESS #2", -50, 100);
    
      popMatrix();
    }//end drawCube
  }
  

