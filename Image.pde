//Global Variables
//
//void setup() {}//End setup
//
//void draw() {}//End draw
//
//void keyPressed() {}//End keyPressed
//
//void mousePressed() {}//End mousePressed
//
//End MAIN Program


//Static to copy
float imageX, imageY, imageWidth, imageHeight;
PImage pic;
//
//CANVAS
size (750, 500); //Landscape
//
//Population
pic= loadImage("Images/Landscape & Square/brain.jpeg"); //Dimensions: width 800, height 450
//Dimensions found by right click image / get info
//Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers)
int picWidth = 800;
int picHeight = 450;
imageX = width*0;
imageY = height*0;
imageWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
imageHeight = height-1;
//
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image(brain.jpeg);
