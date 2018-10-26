class Circle {
  //x and y location of circles
  float CXLoc;
  float CYLoc;
  //size of circles
  float Csize;
  //color of circles
  color Cc; 

  //x location, y location, and color can be modified using these arguments
  Circle(float tempCXLoc, float tempCYLoc, float tempCsize, color tempCc) {
    CXLoc = tempCXLoc;
    CYLoc = tempCYLoc;
    Cc = tempCc;
    Csize = tempCsize;
  }

  void display() {
    fill(Cc);
    ellipse(CXLoc, CYLoc, Csize, Csize); 
  } 
  
}
