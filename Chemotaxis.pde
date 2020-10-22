 Bacteria[] sage= new Bacteria[25];
 
 void setup()   
 {  
   size(400,400);
   for(int i=0; i<25; i++){
    sage[i]=new Bacteria(200,200);
    frameRate(16);
  }
   
  
 }   
 void draw()   
 {    
  
  
  for(int j=0; j<1; j++){
    background(0);
    for(int i=0; i<25; i++){
    sage[i].move();
    sage[i].show();
  }
  
  
  }
 }  

 
 class Bacteria    
 {  
   int myX, myY, myColor, mySize;
   
   Bacteria(int x, int y)
   {
     myX=x;
     myY=y;
     myColor=color((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
     mySize=(int)(Math.random()*25)+10;
   }
  
   void move()
   {
     myX+=(int)(Math.random()*21)-10;
     myY+=(int)(Math.random()*21)-10;
   }
   
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
   }
   

 }
