void setup()
{
  size(500 , 500);
  background(0);
  
  
  
}


 
 ArrayList<Float> sumData =new ArrayList<Float>();


int i=0;

void draw()
{
  background(0);
  
  float scale = sumData / 500;//map(sumData.get(0), 0, 1097, height - 100, 100);
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
 
   String[] lines = loadStrings("calculate.csv");
// ArrayList<Float> sumData =new ArrayList<Float>();
 
  for(String s:lines)
 {
   float f = Float.parseFloat(s);//taking lines from file and converting them to floats
   sumData.add(f);
 }
 
 float barWidth = width / 16.8;

    for (int j = 0 ; j < sumData.size() - 1 ; j ++)
  {
    
    xgraph = j * barWidth ;
    ygraph = height - (sumData.get(j) * scale);
    xtwo = (j + 1) * barWidth + 30;
    ytwo = height - (sumData.get(j + 1) * scale);
    stroke(0, 255, 255);
    line(xgraph, ygraph, xtwo, ytwo);
}

}

