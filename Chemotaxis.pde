Bacteria [] colony;
void setup()   
{     
  size(800, 800);
  frameRate(144);
  colony = new Bacteria[500];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bacteria(400, 400);
  }  
}   
void draw()   
{    
  background(0); 
  for (int i = 0; i < colony.length; i++) {
    colony[i].show();
    colony[i].move();
  }
}
  
class Bacteria    
{     
  int myX, myY, myColor;
  Bacteria(int x, int y) {
    myX = x;
    myY = y;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }  
  void move() {
    myX += (int)(Math.random() * 7) - 3;
    myY += (int)(Math.random() * 7) - 3;
  }  

  void show() {
    fill(myColor);
    ellipse(myX, myY, 20, 20);
  }
}   
