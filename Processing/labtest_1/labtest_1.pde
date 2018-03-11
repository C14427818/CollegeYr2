//labtest 1 
//Author: Céin O'Rourke   student# C14427818
//date 10/11/15

void setup()
{
  
  
  size(500,500);
  background(0);
  stroke(255);
  stroke(255);
  
  line( border,border,border,height-border);
  line( border,height-border,width-border,height-border);
  
  
}

  int border = 40;
  float lineSize = height-(2*border);

  ArrayList<ArrayList<Float>> data = new ArrayList<ArrayList<Float>>();


  ArrayList<Float> sums = new ArrayList<Float>();

 void drawLineGraph()
 {
   
   
  
  float lineSize = height-(2*border);
  float place = border;
  
  
  float numLinestwo = 11;
  float forLine = border;
  
    for(ArrayList<Float> lineData:data)
  {
    float sum = 0;
    for (float f:lineData)
    {
      sum += f;
    }
    sums.add(sum);
  }
 
  for( int i = 0 ; i < numLinestwo; i++)
  {
    line(forLine,height-border,forLine,height-border+10);
    
  }
  
  //Loading in gdp
 String[] strings = loadStrings("gdp.csv");
  
  for(String s:strings)
  {
    sums.add(parseFloat(s));
  }
  
  
   //Scaling line into graph
   float scale3 = map(1,0,160,0,lineSize);
   float  temp = border;
   float maxgdp = 99617.00;
   int mapping = 0;
   
   /*for( int i = 1 ; i < data.size() ; i++)
   {
     stroke( 0 , 255 , 255);
     float g = map(data.get(i-1) , mapping , maxgdp , mapping , lineSize);
     float d = map(data.get(i) , mapping ,  maxgdp , mapping , lineSize);
     line(temp, height-border-g , temp+scale3 , height-border-d);
     
   }*/ //when commented out will read in data but will not let me scale down graph and draw.....
 
 
 }
 
   void draw()
   {
     
     drawLineGraph();
     lineData();
     mouse();
     
   }
  
  void lineData()
  {
      String[] dAta = loadStrings("gdp.csv");
  
    for(String s: dAta)
    {
      println(s);
      String[] line = s.split(",");
    
      ArrayList<Float> lineData = new ArrayList<Float>();
      
      for (int i = 1 ; i < line.length ; i ++)
      {
        lineData.add(parseFloat(line[i]));              
      }
      data.add(lineData);
    }
  }
  
  void mouse()
  {
    if (mousePressed == true) 
    {
       stroke(255, 0, 0 );
       ellipse(mouseX, mouseY, 6, 6);
       fill(255, 0, 0);
       line(mouseX, mouseY, mouseX, mouseY - height); 
    }
  }
