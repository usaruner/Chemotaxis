int s = 10;
int bi = 0;
int r;
int rr;
Bacteria a = new Bacteria(250,250);
Bacteria b = new Bacteria(50,50);
 void setup()   
 {     
  size(500,500); 
 
 }   
 void draw()   
 {  
   background(255);
  //rr= (int)(Math.random()*3) - 1;
  //r = (int)(Math.random()*3) - 1;
  //ellipse(x, y, s, s);   
  //x += r; 
  //y += rr; 
    
  a.move();
  a.create();
  
  
  b.create();
  b.move();
 }  
 class Bacteria    
 {     
   int   x1, y1,r1, r2;

   Bacteria(int x,int y)
   {
     x1 = x;
     y1 = y;
     
   }
   void create(){
     ellipse(x1, y1, s, s);

   }
   void move(){
     r1 = (int)(Math.random()*3) - 1 + bi;
     r2 = (int)(Math.random()*3) - 1 + bi;
     x1 += r1;
     y1 += r2;
     
   }

 }    
