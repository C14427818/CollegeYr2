void setup(){
  
  size(500,500);
  
  color c = color(random(0,255), random(0,255), random(0,255));
  for(int i=0;i<colors.length;i++){
    colors[i]=color(0, random(100, 255), random(100, 255));
  }//end for
 
  for(int i=0; i < rainFall.length; i++){
   println(rainFall[i]);
  }//end for
 
  /*
  for(float r:rainFall){//for every element in rainFall it gets copied to 'r'
    println(r);//'r' prints each itteration
  }//end for each loop  - Not that useful, regular for loop is better
  */
 
  int min = minIndex(rainFall);
  println("The minimum rainfall of: " + rainFall[min] + " was recorded in " + months[min]);
  
  int max = maxIndex(rainFall);
  println("The maximum rainfall of: " + rainFall[max] + " was recorded in " + months[max]);
  

}//end setup


float[] rainFall = {45,37,55,27,38,50,79,48,104,31,100,58};
String[] months = {"January"
  , "February"
  , "March"
  , "April"
  , "May"
  , "June"
  , "July"
  , "August"
  , "September"
  , "October"
  , "November"
  , "December"
};

color[] colors = new color[rainFall.length];

void drawBars(float[] arr){
  float barWidth = width / (float) arr.length;
  for(int i=0; i < arr.length; i++){
    stroke(colors[i]);
    fill(colors[i]);
    float x = i*barWidth;
    rect(x,height,barWidth, - arr[i]);
  }//end for
  
}//end 'colors' method

void draw(){
  
drawBars(rainFall);
  
}//end draw


float sum(float[] rain){
  float sum=0;
  for(int i = 0;i < rain.length; i++){
    sum+= rain[i];
  }
  
  return (sum);
}//end 'sum' method


int minIndex(float[] rain){
  float min=rain[0];
  int minIndex=0;
  for(int i=1; i<rain.length;i++){ // i starts at 1 because min is already rain[0]
    if( rain[i]<min){
      min=rain[i]; //saving the index, not the value
      minIndex= i;
    }//end if
  }//end for
  return (minIndex);
}//end 'min' method


int maxIndex(float[]rain){
  float max=rain[0];
  int maxIndex=0;
  for(int i=1; i<rain.length; i++){
    if(rain[i]>max){
      max=rain[i];
      maxIndex = i;
    }//end if
  }//end for
  return (maxIndex);
}//end 'max' method


float average(float[] rain){
  float average=0;
  float sum=0;
  for(int i=0;i<rain.length;i++){
    sum+=rain[i];
  }//end for
  average = sum / rain.length;
  return (average);
}//end 'average' method
