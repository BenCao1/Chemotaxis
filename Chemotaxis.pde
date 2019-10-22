 Bacteria[] bact;
 //declare bacteria variables here   
 void setup()   
 {   
   size(600,600);
   frameRate(60);
   background(0);
   bact = new Bacteria[20];
   for(int i=0; i < bact.length; i++)
   {
     bact[i] = new Bacteria(300,300);
   }
 	//initialize bacteria variables here   
 }   
 void draw()   
 {
   for (int i = 0; i < bact.length; i++)
   {
   bact[i].show();
   bact[i].move();
 	 }
 
 //move and show the bacteria   
 }  
 class Bacteria    
 {
   int b1Color, b2Color, b3Color;
   int bX1, bY1, bX2, bY2, bX3, bY3;
   
   Bacteria(int x, int y)
   {
     //b1Color = color(205,105,205,15);
     //b2Color = color(150,250,150,15);
     b1Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     b2Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     //b3Color = color(252, 160, 22, 15);
     b3Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     bX1 = bX2 = bX3 = x;
     bY1 = bY2 = bY3 = y;
   }
   void move()
   {
     
     bX1 = bX1 + (int)(Math.random()*9)-4; 
     bY1 = bY1 + (int)(Math.random()*9)-4;
     bX2 = bX2 + (int)(Math.random()*9)-4; 
     bY2 = bY2 + (int)(Math.random()*9)-4;
     bX3 = bX3 + (int)(Math.random()*9)-4;
     bY3 = bY3 + (int)(Math.random()*9)-4;
     
 }
   void show()
   {
     noStroke();
     fill(b1Color);
     ellipse(bX1,bY1,10,10);
     fill(b2Color);
     ellipse(bX2,bY2,10,10);
     fill(b3Color);
     ellipse(bX3,bY3,10,10);
     
     
   }  
 }    
 
