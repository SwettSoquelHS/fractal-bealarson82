void setup() {
  size(600, 600);
  smooth();
  noStroke();  // no outline
  fill(0, 70);  // black with tranparancy
  ellipseMode(RADIUS); 
}

void draw() {
  background(200);
  
  int level = int( map(mouseX, 0,width, 0,10) );  // int() because of type conversion
  drawRain(width/2, height/2, level);
  
  println("level=" + level);  // debug statement
}

void drawRain(int x, int radius, int level) {                    
  rect(x, height/100, radius, radius + 10);
  
  if(level > 0) {
    drawRain(x - radius/2, radius/2, level-1);
    drawRain(x + radius/2, radius/2, level-1);
  }
}
