Bacteria [] colony ;
 void setup()   
 {     
     
  size(500,500); 
 colony = new Bacteria[50];
 for(int i = 1;i < colony.length ;i +=1){
 
colony[i] = new Bacteria(250,250,0,0,0);
 }
 }   
 void draw()   
 {  
   background(0);
    food apple = new food(mouseX,mouseY);
   apple.make();

  for(int a = 1;a < colony.length ;a +=1){
  
  colony[a].move();
  colony[a].create();
  colony[a].follow();
 }   
 
  

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
     noStroke();
     ellipse(x1, y1, s, s);
     

   }
   
   void move(){
     r1 = (int)(Math.random()*9) - 4 ;
     r2 = (int)(Math.random()*9) - 4 ;
     x1 += r1 + bi;
     y1 += r2 + hi;
     
     if (get((int)x1,(int)y1) == color(255,0,0)){
       
     s = s+10;
     
     }
      
     
  
  }
  void follow(){
     if(x1 < mouseX){
      bi = .75;
      }else if (x1 > mouseX){
      bi = -.75;
  }
      
      if(y1 < mouseY){
      hi = .75;
      }else if (y1 > mouseY){
      hi = -.75;
  }
     
   }

 }    
 
 class food
 {
   
   int fx1 , fy1;
   food(int fx,int fy)
   {
     fx1 = fx;
     fy1 = fy;
     
     
   }
   void make(){ 
    noStroke();
    fill(255,0,0);
    rect(fx1,fy1,15,15);
     
     
   }
   
   
   
 }
