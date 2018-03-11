class Snaked{
  
  //FIELDS!!
  color SnakeCol=color(0 ,255, 0);
    
    void drawSnake(){
      
      fill(SnakeCol);
     
      for(int i = 0; i < snakeSize; i++) {
        int X = snakesX[i];
        int Y = snakesY[i];
        rect(X-5,Y-5,10,10);
      } 
       
      for(int i = snakeSize; i > 0; i--){
        snakesX[i] = snakesX[i-1];
        snakesY[i] = snakesY[i-1];
      }
  }//End drawSnake
  
}//End Snaked
