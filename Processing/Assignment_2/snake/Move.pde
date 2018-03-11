class Move{
  
  
    void snakeMove(){
      
        snakeX += moveX;
        snakeY += moveY;
        if(snakeX > windowSize-5 || snakeX < 5||snakeY > windowSize-5||snakeY < 5){
           gameOver = true;
        }
        snakesX[0] = snakeX;
        snakesY[0] = snakeY;
       
  }//End snakeMove
    
}//End Move
