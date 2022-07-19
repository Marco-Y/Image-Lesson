//Global Variables
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1=0.0, imageHeightRatio1=0.0;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2=0.0, imageHeightRatio2=0.0;
float imageWidthRatio=0.0, imageHeightRatio=0.0, picWidthAdjusted, picHeightAdjusted; //Floats need decimals
PImage pic1, pic2;
Boolean widthLarger1=false, heightLarger1=false;
Boolean widthLarger2=false, heightLarger2=false;
//
void setup() {
  //CANVAS
  size (750, 500); //Landscape
  //
  //Population
  pic1= loadImage("Images/Landscape & Square/brain.jpeg"); //Dimensions: width 800, height 450
  pic2= loadImage("Images/Landscape & Square/bike.png"); //Dimensions: width 605, height 605
  //Dimensions found by right click image / get info
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers)
  int picWidth1 = 800;
  int picHeight1 = 450;
  int picWidth2 = 605;
  int picHeight2 = 605;
  //
  if ( picWidth1 >= picHeight1 ) {
    //True if Landscape or Square
    imageLargerDimension1 = picWidth1;
    imageSmallerDimension1 = picHeight1;
    widthLarger1 = true;
  } else {
    //False if Portrait
    imageLargerDimension1 = picHeight1;
    imageSmallerDimension1 = picWidth1;
    heightLarger1 = true;
  } //End Image Dimension Comparison
  //Note: println also verifies decimal places, complier will truncate
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1); //Verify variables details
  //
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ELSEIF-ELSE
  //Computer chooses which formulae to execute
  if ( widthLarger == true ) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if ( widthLarger == true ) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if ( heightLarger == true ) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //Note:
  //Answers must be between 0 & 1 (decimal)
  //Ratio 1.0 similar to style="width: 100%"
  //Ratio of 0-1 similar to style="height: auto"
  //
  //Population of Rect()
  imageX1 = width*0;
  imageY1 = height*0;
  imageWidth1 = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight1 = (height-1)*1/2;
  imageX2 = width*0;
  imageY2 = height*1/2;
  imageWidth2 = width-1; //CANVAS (0,0) means point doesn't match to rectangle, missing outline on 2 sides
  imageHeight2 = (height-1)*1/2;
  //
  //Combination of Population of Image with Population of Rect()
  //Adjusted Image Variables for Aspect Ratio: entire image will be smaller due to aspect ratio
  picWidthAdjusted = float(width)*imageWidthRatio;
  picHeightAdjusted = height*imageHeightRatio;
  //
}//End setup
//
void draw() {
  rect(imageX1, imageY1, imageWidth1, imageHeight1);//Top half of CANVAS
  rect(imageX2, imageY2, imageWidth2, imageHeight2);//Bottom half of CANVAS
  image(pic1, imageX1, imageY1, imageWidth1, imageHeight1);
  image(pic2, imageX2, imageY2, picWidthAdjusted, picHeightAdjusted);
  //image();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
