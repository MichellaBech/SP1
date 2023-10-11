color c = color(random(0, 255), random(0, 255), random(0, 255));
Flower flower = new Flower(c);
Rain rain = new Rain();
Rain[] raindrops = new Rain[10];
Flower[] flowers = new Flower[10];

void setup()
{
  size(800, 800);
  background(0, 180, 250);
  
  for (int i = 0; i < raindrops.length; i++)
  {
    raindrops[i] = new Rain();
  }
  
  for (int i = 0; i < flowers.length; i++)
  {
    flowers[i] = new Flower(c);
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw()
{
   background(0, 180, 250);
   
   //If the mouse is pressed, draw flowers in a random color
   for (int i = 0; i < flowers.length; i++)
      {
        if (mousePressed)
        {
        flowers[i].drawFlower();
        } 
      }

   //If a key is pressed the rain is moving
   for (int i = 0; i < raindrops.length; i++)
  {
    raindrops[i].drawRain();
    if(keyPressed)
    {
      raindrops[i].move();
    }
  }
    //Drawing the grass
    grass();
}

void grass()
{
  stroke(0, 150, 0);
  int b = 10;
  
  for (int i = 0; i < width; i++)
  {
    line(b, height - 150 , b, height + 300);
    b = b + 10;
  }
}
