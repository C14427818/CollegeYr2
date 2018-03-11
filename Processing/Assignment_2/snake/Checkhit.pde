class Checkhit{
  
    void hitSelf(){
      
     for(int i = 1; i < snakeSize; i++){
         if(snakeX == snakesX[i] && snakeY== snakesY[i]){
            gameOver = true;
        }
     }
     
  }//End HitSelf
  
}//End Checkhit
