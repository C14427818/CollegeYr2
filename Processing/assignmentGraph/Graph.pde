class Graph
{
  
      
    void drawGraph()
    {
      
      int numberOfLines = 10;
      float sizeOfLine = height-(2*border);
      float m = map( 120 , 0 ,1200, 0 , sizeOfLine );
      float place = border;
      int num = numberOfLines * 120;
     

     
      for( int i = 0 ; i < numberOfLines+1 ; i++, place+=m , num-=120)
      {
        line(border-10,place,border,place);
        text(num , border-35 , place);
      }
      
      float numberOfLinesTwo = 4;
      float c = map( 1 , 0 , 3.7 , 0 , sizeOfLine );
      float placeTwo = border;
      int numTwo = 2012;
     
     
      for( int i = 0 ; i < numberOfLinesTwo; i++, placeTwo+=c, numTwo +=1)
      {
        line(placeTwo, height-border, placeTwo, height-border+10);
        text(numTwo , placeTwo , height - 10 );
      }
      
       ArrayList<Float> datalist = new ArrayList<Float>();
    
       String[] data = loadStrings("sum.csv");
       
       for(String s:data)
       {
         float f = Float.parseFloat(s);
         datalist.add(f);
       }
    
       int minVal = 62;
       int maxVal = 619;
       int stop = 460;
       float placeThree = border;
       for( int i = 1 ; i < datalist.size() ; i++)
       {
         stroke( 0 , 255 , 255);
         float x1 = map(i-1, 0, datalist.size(), border, stop);
         float x2 = map(i, 0, datalist.size(), border, stop);
         float y1 = map(datalist.get(i-1) , minVal , maxVal , stop, border);
         float y2 = map(datalist.get(i) , minVal,  maxVal,  stop,  border);
         line(x1, y1 , x2 , y2);
         
       }
       
     
    }//end drawGraph
}
