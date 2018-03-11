class Foode{
  
  //FIELDS!!
  PFont Font1 = createFont("Mono",14);
  int Points = 0;
  
    void FoodEat(){
      
      if(foodX == snakeX && foodY == snakeY){
        
           gameOn = true;
           snakeSize++;
           Points += 10;
           temp = Points;
           
      }
      
       if(gameOver == true){
             
             temp = Points;
             
             Points = 0;
             
             
      }
    println(Points);
    
    textFont(Font1);
    textAlign(LEFT);
    fill(0);
    text("Points: " + Points, 8, 15);
    
  }//End FoodEat 

}//End Foode
