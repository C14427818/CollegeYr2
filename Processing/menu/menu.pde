int numOfButtons = 2;  // nr of buttons we want to draw
int selection = 0;    // nr of the currently selected button


// setting stuff up
void setup() {

 size(500,500);
 stroke(255);
 

}

int i = 0;

void draw() {
  
 background(0);
 
  stroke(255);
  
  stroke(255);
 
 // draw a rect for every button
 for (i=0; i<numOfButtons; i++) {

   if (i==selection) {
     // this is the currently selected button, give it another look
     strokeWeight(6); 
     fill(255,0 , 0);
     
   } 
   else {
     // this is NOT a selected button
     strokeWeight(1);
     fill(255, 255 ,0);
     
   }

   rect( width/4, 70+i*180, width/2, height/6);
 }
 
 if(key == ' ')
 {
   if(numOfButtons == 2)
   {
      text("TO SEE PIE PRESS 2.", 190, 210);
      stroke(255, 255, 0);
   }
 
 }
 


 
   text("TO SEE GRAPH PRESS 1.", 190, 110);

 
}


// if up key is pressed, next button above is selected
// if down key is pressed, next button below is selected
void keyPressed() {
 if (keyCode == UP) {
   selection--;
  
   selection = max(selection, 0); // dont let the value go below 0
   println(numOfButtons);
 } 
 
 else if (keyCode == DOWN) {
   selection++;
   selection = min(selection, numOfButtons-1); // dont let the value go beyond the nr of buttons
    
 }
 
 
}
 






