/*
Author Rupert Russell
 date: 5 December 2017
 Created with Processing see processing.org
 thanks to https://www.redbubble.com/people/podartist/works/14638372-alice-blue-quatrefoil-in-an-english-country-garden
 for inspiration
 
 Variation 2
 */


int scale = 50;

int baseCircleSize = 10;

int weight = 12;

void setup() {
  blendMode(DIFFERENCE);
  size(7632, 7632);
  background(255);
}

void draw() {
  noLoop();
  fill(255);
  stroke(0);

  // white circles 1

  for (int y = (baseCircleSize * scale) /2; y < height; y = y +  baseCircleSize * scale) {
    for (int x = (baseCircleSize * scale) /2; x < width; x = x + baseCircleSize * scale) {
      ellipse(x, y, baseCircleSize * scale, baseCircleSize * scale);
    }
  }


  // white circles 2
  translate(baseCircleSize * -scale/2, baseCircleSize * -scale/2);

  for (int y = (baseCircleSize * scale) /2; y < height + baseCircleSize * scale; y = y +  baseCircleSize * scale) {
    for (int x = (baseCircleSize * scale) /2; x < width + baseCircleSize * scale; x = x + baseCircleSize * scale) {
      ellipse(x, y, baseCircleSize * scale, baseCircleSize * scale);
    }
  }

  noFill();
  

  

  // Black first inner circles 3
  blendMode(ADD);
  blendMode(REPLACE);
  stroke(0);
  strokeWeight(weight);
  translate(baseCircleSize * scale/2, baseCircleSize * scale/2);

  for (int y = (baseCircleSize * scale) /2; y < height +  baseCircleSize * scale; y = y +  baseCircleSize * scale) {
    for (int x = (baseCircleSize * scale) /2; x < width +  baseCircleSize * scale; x = x + baseCircleSize * scale) {
      ellipse(x, y, baseCircleSize * scale * .95, baseCircleSize * scale * .95);
    }
  }





  // black inner circles 4
  blendMode(ADD);
  blendMode(REPLACE);
  stroke(0);
  strokeWeight(weight);
  translate(baseCircleSize * -scale/2, baseCircleSize * -scale/2);

  for (int y = (baseCircleSize * scale) /2; y < height +  baseCircleSize * scale; y = y +  baseCircleSize * scale) {
    for (int x = (baseCircleSize * scale) /2; x < width +  baseCircleSize * scale; x = x + baseCircleSize * scale) {
      ellipse(x, y, baseCircleSize * scale * .95, baseCircleSize * scale * .95);
    }
  }  

  // white inermost circles 5
  blendMode(REPLACE);
  stroke(255);
  strokeWeight(9);
  translate(baseCircleSize * -scale/2, baseCircleSize * -scale/2);

  for (int y = (baseCircleSize * scale) /2; y < height +  baseCircleSize * scale; y = y +  baseCircleSize * scale) {
    for (int x = (baseCircleSize * scale) /2; x < width +  baseCircleSize * scale; x = x + baseCircleSize * scale) {
      ellipse(x, y, baseCircleSize * scale * .91, baseCircleSize * scale * .91);
    }
  }  


    // white inermost circles 6
  blendMode(REPLACE);
  stroke(255);
  strokeWeight(9);
  translate(baseCircleSize * scale/2, baseCircleSize * scale/2);

  for (int y = (baseCircleSize * scale) /2; y < height +  baseCircleSize * scale; y = y +  baseCircleSize * scale) {
    for (int x = (baseCircleSize * scale) /2; x < width +  baseCircleSize * scale; x = x + baseCircleSize * scale) {
      ellipse(x, y, baseCircleSize * scale * .91, baseCircleSize * scale * .91);
    }
  }  

  save("pattern009.png");
  exit();
}
