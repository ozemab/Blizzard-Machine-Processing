//multiple arrays containing 200 circles
//more stuff
int theCircles = 200;
//winter circles
Circle[] circles1 = new Circle[theCircles];
Circle[] circles2 = new Circle[theCircles];
Circle[] circles3 = new Circle[theCircles];
Circle[] circles4 = new Circle[theCircles];
Circle[] circles5 = new Circle[theCircles];

//toggle between winter and summer
int scene = 1;

void setup () {
  size (800, 600);
  noStroke ();
  //fill the array 
  for (int i = 0; i < theCircles; i++) {
    //WINTER
    //display blue and purple circles (snow) of varying opacities in random places througout the window

    //dark purple
    circles1[i] = new Circle (random (width), random (height), random(5, 40), color (132, 147, 232, random (0, 100)));
    //light purple
    circles2[i] = new Circle (random (width), random (height), random(5, 40), color (196, 204, 255, random (0, 100)));
    //light blue
    circles3[i] = new Circle (random (width), random (height), random(5, 40), color (132, 226, 255, random (0, 100)));
    //turquoise
    circles4[i] = new Circle (random (width), random (height), random(5, 40), color (116, 198, 214, random (0, 100)));
    //dark blue
    circles5[i] = new Circle (random (width), random (height), random(5, 40), color (49, 95, 175, random (0, 100)));
  }
}


void draw () {
  //WINTER
  //light blue background with smooth circles
  if (scene == 1) {
    background (212, 236, 255);
    smooth ();
    for (int i = 0; i < theCircles; i++) {

      //display the circles
      //starting at 2 seconds more snow appears each second without input from the user 
      if (millis () > 3000) {
        circles1[i].display();
      }
      if (millis () > 4500) {
        circles2[i].display();
      }
      if (millis () > 6000) {
        circles3[i].display();
      }
      if (millis () > 7500) {
        circles4[i].display();
      }
      if (millis () > 9000) {
        circles5[i].display();
      }
    }
  }

  if (scene == 2) {
    background (255, 250, 212);
    }
  }



  void keyPressed() {
    scene = scene + 1;
    if (scene > 2) {
      scene = 1;
    }
  }
