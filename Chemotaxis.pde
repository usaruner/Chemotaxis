Bacteria [] colony ;
//Bacteria a = new Bacteria(250,250);
//Bacteria b = new Bacteria(50,50);
 void setup()   
 {     
  size(500,500); 
 colony = new Bacteria[5];

 }   
 void draw()   
 {  
   background(255);

 
 // a.create();
 // a.move();
 //b.create();
 //b.move();
  for(int a = 1;a < colony.length ;a +=1){
  colony[a] = new Bacteria(a*10,a*10);
  colony[a].move();
  colony[a].create();
 }   
  
  

 }  
 class Bacteria    
 {  
   float x1, y1, bi, hi;  
   int   r1, r2, s;

   Bacteria(int x,int y)
   {
      s = 10;
     x1 = x;
     y1 = y;
     float bi = 0;
     float hi = 0;
   }
   void create(){
     ellipse(x1, y1, s, s);
     if( x1 == mouseX && y1 == mouseY){
     s = s+10;
     
     } 

   }
   void move(){
     r1 = (int)(Math.random()*3) - 1 ;
     r2 = (int)(Math.random()*3) - 1 ;
     x1 += r1 + bi;
     y1 += r2 + hi;
      
      if(x1 < mouseX){
      bi = .1;
      }else if (x1 > mouseX){
      bi = -.1;}
      
      if(y1 < mouseY){
      hi = .1;
      }else if (y1 > mouseY){
      hi = -.1;
  
  }
     
   }

 }    
