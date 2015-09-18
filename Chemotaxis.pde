Bacteria [] colony ;
 void setup()   
 {     
  size(500,500); 
 colony = new Bacteria[200];
 for(int i = 1;i < colony.length ;i +=1){
   
colony[i] = new Bacteria(250,250,0,0,0);
 }
 }   
 void draw()   
 {  
   background(255);


  for(int a = 1;a < colony.length ;a +=1){
  
  colony[a].move();
  colony[a].create();
 }   
  food apple = new food(250,50);
   apple.make();

 }  
 class Bacteria    
 {  
   float x1, y1, bi, hi;  
   int   r1, r2, s ,c1 ;

   Bacteria(int x,int y,int r,int g,int b)
   {
      s = 10;
     x1 = x;
     y1 = y;
     r =(int)(Math.random()*255);
     g =(int)(Math.random()*255);
     b =(int)(Math.random()*255);
     c1 = color (r,g,b);
     float bi = 0;
     float hi = 0;
   }
   void create(){
     fill(c1);
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
      
     
  
  }
  void follow(){
     if(x1 < mouseX){
      bi = .2;
      }else if (x1 > mouseX){
      bi = -.2;}
      
      if(y1 < mouseY){
      hi = .2;
      }else if (y1 > mouseY){
      hi = -.2;
  }
     
   }

 }    
 
 class food
 {
   
   int fx1 , xy2;
   food(int fx,int fy)
   {
     fx1 = fx;
     fx1 = fy;
     
     
   }
   void make() {
    rect(fx1,fx1,75,75);
     
     
   }
   
   
   
 }
