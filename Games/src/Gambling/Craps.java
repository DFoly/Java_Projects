package Gambling;

import java.util.Random;


/**
 * Created by dfoley on 13/04/2017.
 * This implements a simulation of the game craps
 * It will contain methods: play and roll dice
 */
public class Craps {

    private Random randomNumbers = new Random();

    // status of game as enumeration
    private enum Status {
        CONTINUE, WON, LOST
    }

    // intialise some constants
    private final static int SEVEN = 7;
    private final static int SNAKE_EYES = 2;
    private final static int BOX_CARS = 12;
    private final static int YO_LEVEN = 11;
    private final static int TREY = 3;

    // roll dice method
    public int rollDice() {
        // random initial values for two dice
        int dice1 = 1 + randomNumbers.nextInt(6);
        int dice2 = 1 + randomNumbers.nextInt(6);

        int sum = dice1 + dice2;

        System.out.printf("Player rolled %d + %d = %d\n",
                dice1, dice2, sum);
        return sum;

    }

    // create the play game method
    public void play() {
        int myPoint = 0;
        Status gameStatus;

        // rollDIce
        int result = rollDice();

        // switch statement to deal with different cases
        switch (result) {
            case YO_LEVEN: // win with 11 on first roll
            case SEVEN: // win with 7 on first roll
                gameStatus = Status.WON;
                break;
            case TREY:
            case BOX_CARS:
            case SNAKE_EYES:
                gameStatus = Status.LOST;
                break;
            default:
                gameStatus = Status.CONTINUE; // game is not over
                myPoint = result;
                System.out.printf("Point is %d\n", myPoint);
                break;
        }
        // main game loop
        while (gameStatus == Status.CONTINUE) {

            result = rollDice();

            if (result == myPoint) {
                gameStatus = Status.WON;
            } else if (result == SEVEN) {
                gameStatus = Status.LOST;
            }
        }

        // display whether play won or lost
        if (gameStatus == Status.WON)
            System.out.println("Player Wins");
        else
            System.out.println("Player loses");

    }

}
