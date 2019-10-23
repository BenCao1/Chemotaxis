 Bacteria[] bac;
 //declare bacteria variables here   
 void setup()   
 {   
   size(600,600);
   frameRate(60);
   background(0);
   bac = new Bacteria[10];
   for(int i=0; i < bac.length; i++)
   {
     bac[i] = new Bacteria(300,300);
   }
 	//initialize bacteria variables here   
 }   
 void draw()   
 {
   for (int i = 0; i < bac.length; i++)
   {
   bac[i].show();
   bac[i].move();
 	 }
 
 //move and show the bacteria   
 }  
 
 class Bacteria    
 {
   int b1Color, b2Color, b3Color, b4Color;
   int bX1, bY1, bX2, bY2, bX3, bY3, bX4, bY4;
   
   Bacteria(int x, int y)
   {
     b1Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     b2Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     b3Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     b4Color = color((int)(Math.random() * 256),(int)(Math.random() * 256),205,8);
     bX1 = bX2 = bX3 = bX4 = x;
     bY1 = bY2 = bY3 = bY4 = y;
   }
   void move()
   {
     
     bX1 = bX1 + (int)(Math.random()*9)-4; 
     bY1 = bY1 + (int)(Math.random()*9)-4;
     bX2 = bX2 + (int)(Math.random()*9)-4; 
     bY2 = bY2 + (int)(Math.random()*9)-4;
     bX3 = bX3 + (int)(Math.random()*9)-4;
     bY3 = bY3 + (int)(Math.random()*9)-4;
     bX4 = bX3 + (int)(Math.random()*9)-4;
     bY4 = bY3 + (int)(Math.random()*9)-4;
     
     
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
     fill(b4Color);
     ellipse(bX4, bY4, 10, 10);
     
     
   }  
 }    
 
