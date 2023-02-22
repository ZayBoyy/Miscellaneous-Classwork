#include <stdio.h>
#include <stdlib.h>
#include <iostream>
using namespace std;


class Cube {
    Face faceYellow;
    Face faceWhite;
    Face faceBlue;
    Face faceRed;
    Face faceGreen;
    Face faceOrange;

    private:
    void turnBack(int column) {

        selected.row1[column] = selected.below.row1[column];
        selected.row2[column] = selected.below.row2[column];
        selected.row3[column] = selected.below.row3[column];

         selected.below.row1[column] = selected.opposite.row1[column];
         selected.below.row2[column] = selected.opposite.row2[column];
         selected.below.row3[column] = selected.opposite.row3[column];

         selected.opposite.row1[column] = selected.above.row1[column];
        selected.opposite.row2[column] = selected.above.row2[column];
        selected.opposite.row3[column] = selected.above.row3[column];

         selected.row1[column] = selected.below.row1[column];
        selected.row2[column] = selected.below.row2[column];
        selected.row3[column] = selected.below.row3[column];


    }

     void turnForward(int column) {

        selected.below.row1[column] = selected.row1[column];
        selected.row2[column] = selected.below.row2[column];
        selected.row3[column] = selected.below.row3[column];

         selected.below.row1[column] = selected.opposite.row1[column];
         selected.below.row2[column] = selected.opposite.row2[column];
         selected.below.row3[column] = selected.opposite.row3[column];

         selected.opposite.row1[column] = selected.above.row1[column];
        selected.opposite.row2[column] = selected.above.row2[column];
        selected.opposite.row3[column] = selected.above.row3[column];

         selected.row1[column] = selected.below.row1[column];
        selected.row2[column] = selected.below.row2[column];
        selected.row3[column] = selected.below.row3[column];

        if (column == 0) {
            selected.left.row1[2] = selected.left.row3[0];
            selected.left.row1[1] = selected.left.row3[1]
        }

    }

     void turnLeft(int column) {

        selected.row1[column] = selected.below.row1[column];
        selected.row2[column] = selected.below.row2[column];
        selected.row3[column] = selected.below.row3[column];

         selected.below.row1[column] = selected.opposite.row1[column];
         selected.below.row2[column] = selected.opposite.row2[column];
         selected.below.row3[column] = selected.opposite.row3[column];

         selected.opposite.row1[column] = selected.above.row1[column];
        selected.opposite.row2[column] = selected.above.row2[column];
        selected.opposite.row3[column] = selected.above.row3[column];

         selected.row1[column] = selected.below.row1[column];
        selected.row2[column] = selected.below.row2[column];
        selected.row3[column] = selected.below.row3[column];


    }



};

class Face {


    public:
    char row1[] = {'d', 'd', 'd'};
    char row2[] = {'d', 'd', 'd'};
    char row3[] = {'d', 'd', 'd'};

    Face* right;
    Face* left;
    Face* above;
    Face* below;
    Face* opposite;

};