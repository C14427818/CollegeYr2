/**
 * Created by ORuairc on 29/03/2016.
 */

package ie.dit;

import ddf.minim.AudioPlayer;
import ddf.minim.Minim;
import processing.core.PApplet;


public class Main extends PApplet {

    Minim Jam;
    Minim Jam1;
    AudioPlayer audio;
    AudioPlayer audio1;

    int x = 50;
    int y = 200;
    int playerDirection = RIGHT;
    int compX = 350;
    int compY = 200;
    int compDirection = LEFT;
    int changeDirection = 2;
    int optMusic = 2;


    public boolean gameOver = false;//For game to keep playing until a crash

    public void setup() {

        Jam = new Minim(this);
        audio = Jam.loadFile("Jam.mp3");
        Jam1 = new Minim(this);
        audio1 = Jam1.loadFile("house.mp3");

        size(400, 400);

        frameRate(60);


        background(0);


    }


    public void draw() {


        stroke(56, 36, 255);


        //check if game is over
        if (gameOver == true) {

            stroke(27, 217, 222);
            textSize(20);
            text("Game Over", 210, 130);
            stroke(0);
        } else {
            Player();
            if (gameOver == false) {
                computerPlayer();
            }
        }


    }


    void Player() {

        if (get(x, y) != color(0, 0, 0)) {

            gameOver = true;
            textSize(20);
            stroke(27, 217, 222);
            text("You Suck!", 210, 150);
            text("Click mouse", 210, 170);
            text("to Restart", 210, 190);
            fill(238, 218, 0);
            ellipse(150, 150, 100, 100);
            fill(0, 0, 0);
            rect(125, 125, 10, 25);
            rect(165, 125, 10, 25);
            rect(125, 170, 50, 10);
            fill(27, 217, 222);

        }
        stroke(27, 217, 222);
        point(x, y);

        if(optMusic % 2 == 0){

            audio.play();
            audio1.pause();

        }
        else{

            audio1.play();
            audio.pause();
        }


        if (playerDirection == RIGHT) {
            x++;
        } else {
            if (playerDirection == LEFT) {
                x--;
            }
            if (playerDirection == UP) {
                y--;
            }
            if (playerDirection == DOWN) {
                y++;
            }
        }
    }



    public void keyPressed(){

        if (key == 'a')
        {
            playerDirection = LEFT;
        }
        else if (key == 'd')
        {
            playerDirection = RIGHT;
        }
        else if (key == 'w')
        {
            playerDirection = UP;
        }
        else if (key == 's')
        {
            playerDirection = DOWN;
        }


    }


    void computerPlayer() {

        //check if game is over
        if (get(compX, compY) != color(0, 0, 0)) {
            gameOver = true;
            textSize(20);
            stroke(27, 217, 222);
            textSize(20);
            stroke(224, 217, 27);
            text("Victory!", 210, 160);
            text("Click mouse", 210, 180);
            text("to Restart", 210, 200);
        }

        stroke(224, 217, 27);
        point(compX, compY);

        //Change direction each time game is restarted
        if (changeDirection % 2 == 0) {

            //makes opponent go right around edge so harder to win

            if (compDirection == RIGHT) {

                compX++;
                if (get(compX + 1, compY) != color(0, 0, 0)) {

                    compDirection = UP;
                }
            } else {

                if (compDirection == LEFT) {

                    compX--;
                    if (get(compX - 1, compY) != color(0, 0, 0)) {

                        compDirection = DOWN;
                    }
                }
                if (compDirection == UP) {

                    compY--;
                    if (get(compX, compY - 1) != color(0, 0, 0)) {

                        compDirection = LEFT;
                    }
                }
                if (compDirection == DOWN) {

                    compY++;
                    if (get(compX, compY + 1) != color(0, 0, 0)) {

                        compDirection = RIGHT;
                    }
                }
            }

        } else {

            if (compDirection == RIGHT) {

                compX++;
                if (get(compX + 1, compY) != color(0, 0, 0)) {

                    compDirection = DOWN;
                }
            } else {

                if (compDirection == LEFT) {

                    compX--;
                    if (get(compX - 1, compY) != color(0, 0, 0)) {

                        compDirection = UP;
                    }
                }
                if (compDirection == UP) {

                    compY--;
                    if (get(compX, compY - 1) != color(0, 0, 0)) {

                        compDirection = RIGHT;
                    }
                }
                if (compDirection == DOWN) {

                    compY++;
                    if (get(compX, compY + 1) != color(0, 0, 0)) {

                        compDirection = LEFT;
                    }
                }

            }

        }


    }


    public void mousePressed() {

        //to restart the game
        if (mousePressed = true) {

            background(0);
            x = 50;
            y = 200;
            playerDirection = RIGHT;
            compX = 350;
            compY = 200;
            compDirection = LEFT;
            gameOver = false;
            changeDirection ++;
            optMusic ++;


        }
    }


    public static void main(String[] args) {
        String[] a = {"MAIN"};
        PApplet.runSketch(a, new Main());
    }

}

