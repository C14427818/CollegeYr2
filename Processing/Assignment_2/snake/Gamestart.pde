class Gamestart extends Foode{
  
  //FIELDS!!
  PFont Font = createFont("Arial",20);
  
  void startGame(){ 
  
    bg1 = loadImage("bk.jpg");
    background(bg1);
     
    if(gameOver == false){
     
      foodd.drawFood();
      snaked.drawSnake();
      move.snakeMove();
      foode.FoodEat();
      checkhit.hitSelf();
    }
    else{
      
        String showGameOver = "You Lost You Donut...";
        textAlign(CENTER);
        textFont(Font);
        fill(150, 255, 0);
        text(showGameOver, 150, 120, 40);
        text("Press R to Redeem Yourself", 150, 160, 10);
        text("Score: " + temp, 150, 205, 10);
        
     if(temp <= 80){
      
      text("You really suck at this game...", 150, 250, 5);
      
    }
    
     if(temp > 80 && temp < 180){
      
      text("Meh you are alright..", 150, 250, 5);
      
    }
    
    if(temp > 180){
      
      text("You are fairly decent at this!!", 150, 250, 5);
      
    }
        
   }
    
 
    
    
 
   
 }//End startGame

}//End Gamestart
  
