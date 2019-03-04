void setup() {
  size(600, 600);
  smooth();
  noStroke();
  fill(#053679, 90);  // black with tranparancy
  ellipseMode(RADIUS); 
}

void draw() {
  background(#F2FA28);
  
  int layer = int( map(mouseX, 0,width, 0,5) );  // int() because of type conversion
  drawRain(600, 800, layer);
  
  println("layer=" + layer);  // debug statement
}

void drawRain(int x, int radius, int layer) {                    
  rect(x, height/500, radius, radius + 10);
  rect(x,height/2.85,radius -100,radius + 10);
  rect(x + 10,height/1.46,radius,radius + 10);
  
  if(layer > 0) {
    drawRain(x - radius/2, radius/2, layer-1);
    drawRain(x + radius/2, radius/2, layer-1);
    drawRain(x ,radius/5,layer-6);
    drawRain(x,radius/3,layer - 2);
  }
}
