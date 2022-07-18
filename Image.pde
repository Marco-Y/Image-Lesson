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
float imageX, imageY, imageWidth, imageHeight, picWidthAdjusted, picHeightAdjusted;
float imageLargerDimension, imageSmallerDimension;
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
if ( picWidth >= picHeight ) {
  //True if Landscape or Square 
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
} else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;
} //End Image Dimension Comparison
println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger); //Verify variables details
//
//Aspect Ratio
//Note: single line IFs can be summarized into IF-ELSE or IF-ELSEIF-ELSE
//Computer chooses which formulae to execute
if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageSmallerDimension;
if () ;
if () ;
//Note:
//Answers must be between 0 & 1 (decimal)
//Ratio 1.0 similar to style="width: 100%"
//Ratio of 0-1 similar to style="height: auto"
//Note: println also verifies decimal places, complier will truncate
//
imageX = width*0;
imageY = height*0;
imageWidth = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
imageHeight = height-1;
//
rect(imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, imageWidth, imageHeight);
image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image();
