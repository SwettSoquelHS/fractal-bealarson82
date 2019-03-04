void setup() {
  size(600, 600);
  smooth();
  noStroke();
  fill(#053679, 90);  // black with tranparancy
  ellipseMode(RADIUS); 
}

void draw() {
  background(#A1A1A2);
  
  int layer = int( map(mouseX, 0,width, 0,10) );  // int() because of type conversion
  drawRain(600, 800, layer);
  
  println("layer=" + layer);  // debug statement
}

void drawRain(int x, int radius, int layer) {                    
  rect(x, height/100, radius, radius + 10);
  
  if(layer > 0) {
    drawRain(x - radius/2, radius/2, layer-1);
    drawRain(x + radius/2, radius/2, layer-1);
  }
}
