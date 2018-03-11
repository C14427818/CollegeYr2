void setup()
{
  
 size(500, 500);
 println(mapRange(6, 0, 20, 0, 100));
 
 //how to put info into an array
 float[] arr = new float[3];
 arr[0] = 99;
 arr[1] = 10;
 arr[2] = 10;
 
 //how to create an array
 ArrayList<Float> arrList = new ArrayList<Float>();
 
 //how to resize array
 arrList.add(99.0f);
 arrList.add(10.0f);
 arrList.add(10.0f);
 
 
   for(int i = 0; i < arrList.size(); i++)
   {
     println(arrList.get(i));
   }
 
   //  same way to print array
   for(float f:arrList)
   {
     println(f);
   }
   
   String fsVal = "100.99";
   float fVal = Float.parseFloat(fsVal);//java way
   fVal = parseFloat(fsVal);//processing way
 
 // files must be in data folder 
 //String[] lines = loadStrings("hello files.txt");
 String[] lines = loadStrings("sum.csv");
 ArrayList<Float> sumData =new ArrayList<Float>();
 
 for(String s:lines)
 {
   float f = Float.parseFloat(s);//taking lines from file and converting them to floats
   sumData.add(f);
 }
 
 float lowest = sumData.get(0);
 int lowestIndex = 0;
 
 for(int i = 0; i < sumData.size(); i++)
 {
   if(sumData.get(i) < lowest)
   {
     lowest = sumData.get(i);
     lowestIndex = i;
   }
 }
 
 float highest = sumData.get(0);
 int highestIndex = 0;
 
  for(int j = 0; j < sumData.size(); j++)
 {
   if(sumData.get(j) > highest)
   {
     highest = sumData.get(j);
     highestIndex = j;
   }
 }
 
 float avg = 0;
 float  count = 0;
 float temp = 0;
 
 for(int k = 0; k < sumData.size(); k++)
 {
   count = count + sumData.get(k);

   temp = count;
 }
 
 avg = temp/ sumData.size();
 
 for(String s:lines)
 {
     /*String[] words = s.split(" ");
     for(String w:words)
     {
       println(w);
     }
     */
   println(s);
 }
 
  println("the driest year is: " + (1850 + lowestIndex) + " with rainfall of: " + sumData.get(lowestIndex));
  println("the wettest year is: " + (1850 + highestIndex) + " with rainfall of: " + sumData.get(highestIndex));  
  println("the average rainfall is: " + avg);
  
}

void draw()
{
  

  
}

  
float mapRange(float value, float start1, float stop1, float start2, float stop2)
{
  
  float inRange = stop1 - start1;
  float howFar = value - start1;
  float percentageinRange = howFar / inRange;
  
  float outRange = stop2 - start2;
  return start2 + (percentageinRange * outRange);
  
  
}
  


  
  
  
