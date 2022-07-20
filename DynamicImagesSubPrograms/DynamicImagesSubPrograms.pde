void setup() {
  //CANVAS
  size (750, 500); //Landscape
  //
  populatingVariables();
  //
  imageDraw();
  //
}//End setup
//
void draw() {
  //Note: DRAW loop repeats 60 times/s, static images should be in SETUP, "system resources"
  //Empty DRAW loop, must be present for JAVA Compiler
//
}//End draw
//
void keyPressed() {
rect(0, 0, width, height);
}//End keyPressed
//
void mousePressed() {
  imageDraw();
}//End mousePressed
//
//End MAIN Program
