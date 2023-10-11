class Flower
{
  float xPos = random(0, width - 10); 
  color c;
  
   Flower(color c)
  {
    this.c = c;
  }
  
  //Draw the flower
  void drawFlower()
  {
    stroke(0);   
    strokeWeight(1);
    fill(255, 255, 0);
    ellipse(xPos, height - 395, 50, 50);
     fill(c);
    ellipse(xPos, height - 435, 35, 35);
    ellipse(xPos, height - 355, 35, 35);
    ellipse(xPos - 40, height - 400, 35, 35);
    ellipse(xPos + 40, height - 398, 35, 35);
     ellipse(xPos + 27, height - 425, 30, 30);
     ellipse(xPos - 27, height- 425, 30, 30);
     ellipse(xPos + 27, height - 370, 30, 30);
     ellipse(xPos - 27, height - 370, 30, 30);
     
        //Draw the stilk
     stroke(0, 150, 0);
     strokeWeight(8);
     line(xPos, height - 334, xPos, height);
  } 
}
