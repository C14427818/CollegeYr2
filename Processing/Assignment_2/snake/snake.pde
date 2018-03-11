Move move = new Move();
Foode foode = new Foode();
Foodd foodd = new Foodd();
Snaked snaked = new Snaked();
Checkhit checkhit = new Checkhit();
Resetgame resetgame = new Resetgame();
Gamestart gamestart = new Gamestart();

PImage bg;
PImage bg1;

float speed = 100;
int cx;
int cy;
 
int which = 0;
int moveX = 0;
int moveY = 0;
int snakeX = 0;
int snakeY = 0;
int foodX = -1;
int foodY = -1;
int temp = 0;
  
boolean gameOn = true;//To keep game running until dead

int []snakesX;
int []snakesY;
int snakeSize = 1;
int windowSize = 300;

boolean gameOver = false;//To end game if check is false



void setup(){
    size(windowSize, windowSize,P3D);
    
    bg = loadImage("snakeBk.jpg");
    background(bg);
    
    fill(150, 255, 0);
    text("Press 1: You are SOFT.", 10, 250);
    text("Press 2: You aren't as soft.", 10, 265);
    text("Press 3: You will probably throw your computer\nout the window....", 10, 280);
    
    speed = 100;
    speed=speed/frameRate;
    snakesX = new int[100];
    snakesY = new int[100];
    
    cx = width/2;
    cy = height/2;
     
    snakeX = cx-5;
    snakeY = cy-5;
    foodX = -1;
    foodY = -1;
    gameOver = false;
    gameOn = true;
    snakeSize =1;
}//End Setup
  
void draw(){

 if(keyPressed){
  
    if(key == '1'){
    
      which = 1;
    }
    if(key == '2'){
    
      which = 2;
    }
    if(key == '3'){
      
      which = 3;
    }
    
  }
  if(which == 1){
  
    if(speed%10 == 0){
    gamestart.startGame();
  }
 
     speed += 1;
  } 
  
  if(which == 2){
    
     if(speed%10 == 0){
       gamestart.startGame();
     }
     
     speed += 2;
  }
  
    if(which == 3){
    
     if(speed%10 == 0){
       gamestart.startGame();
     }
     
     speed += 10;
  }

}//End Draw

 

  
void keyPressed() {
  if(keyCode == UP) { 
      if(snakesY[1] != snakesY[0]-10){
      moveY = -10; moveX = 0;
      }
    }//End Up
    
    if(keyCode == DOWN) {
      if(snakesY[1] != snakesY[0]+10){
      moveY = 10; moveX = 0;
      }
    }//End Down
    
    if(keyCode == LEFT) { 
      if(snakesX[1] != snakesX[0]-10){
      moveX = -10; moveY = 0;
      }
    }//End Left
    
    if(keyCode == RIGHT) {
      if(snakesX[1] != snakesX[0]+10){
      moveX = 10; moveY = 0;
      }
    }//End Right
    
    if(keyCode == 'R') {
      resetgame.reset();
    }//End Reset
    
}//End KeyPressed

