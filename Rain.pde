class Rain {
  
  float yPos = 0;
  float xPos = random(0, width); 
  
   Rain()
   {
 
   }
   
   void drawRain()
   {
       stroke(0);
       fill(0, 0, 100);
       ellipse(xPos, yPos, 5, 7);
   }
  
  void move()
  {
       yPos = yPos + 5;
      if (yPos > height) 
      {
        yPos = 0;
      }
  }
}
