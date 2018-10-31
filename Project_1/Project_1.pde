//BLIZZARD MACHINE

//multiple arrays containing 200 circles
int theCircles = 200;

Circle[] circles1 = new Circle[theCircles];
Circle[] circles2 = new Circle[theCircles];
Circle[] circles3 = new Circle[theCircles];
Circle[] circles4 = new Circle[theCircles];
Circle[] circles5 = new Circle[theCircles];
Circle[] circles6 = new Circle[theCircles];

void setup () {
  //Pale blue background
  background (255);
  size (800, 600);
  //Fill the array 
  for (int i = 0; i < theCircles; i++) {
    //display white, blue, and purple circles (snow) of varying opacities in random places througout the window

    //white
    circles1[i] = new Circle (random (width), random (height), random(5, 40), color (255, 255, 255, random (0, 100)));
    //pale blue
    circles2[i] = new Circle (random (width), random (height), random(5, 40), color (212, 236, 255, random (0, 100)));
    //light blue
    circles3[i] = new Circle (random (width), random (height), random(5, 40), color (137, 206, 255, random (0, 100)));
    //light purple
    circles4[i] = new Circle (random (width), random (height), random(5, 40), color (130, 174, 255, random (0, 100)));
    //dark purple
    circles5[i] = new Circle (random (width), random (height), random(5, 40), color (91, 100, 255, random (0, 100)));
    //dark blue
    circles6[i] = new Circle (random (width), random (height), random(5, 40), color (27, 63, 175, random (0, 100)));
  }
}


void draw () {
  noStroke();
  smooth ();

  //display the circles (snow)
  for (int i = 0; i < theCircles; i++) {

    //starting at 3 seconds different colored snow appears every three seconds without input from the user
    //time of day changes from daytime to nighttime 
    if (millis () > 3000) {
      circles1[i].display();
    }
    if (millis () > 4500) {
      circles2[i].display();
    }
    if (millis () > 9000) {
      circles3[i].display();
    }
    if (millis () > 12000) {
      circles4[i].display();
    }
    if (millis () > 15000) {
      circles5[i].display();
    }
    if (millis () > 18000) {
      circles6[i].display();
    }

    //when mouse is moved ellipses appear at the position of the mouse rotating randomly up to 90 degrees 
    //moving the mouse to different positions on the screen creates different blizzard effects 
    mouseMoved ();
    translate(mouseX, mouseY);
    rotate (radians (random (80))); 
    ellipse (mouseX, mouseY, mouseX, mouseY);
  }

  mousePressed ();
} 
