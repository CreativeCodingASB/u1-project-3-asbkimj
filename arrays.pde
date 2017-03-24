float hue = 0;
float saturation = 255; 
float brightness = 255;

int[] cordX = new int [10]; 
int[] cordY = new int [10];
int[] circleSize = new int[10];
float cirXY;

void setup()
{
  size(500, 500);
  background(0);
  colorMode(HSB);

  for (int i = 0; i < cordX.length; i++)
  {
    cordX[i] = int(random(0, width));
  }

  for (int i = 0; i < cordY.length; i++)
  {
    cordY[i] = int(random(0, height));
  }

  for (int i = 0; i < circleSize.length; i++)
  {
    circleSize[i] = int(random(0, 10));
  }

  cirXY = (random(100, 150));
}

void draw()
{ 
  background(255);
  drawCircles();
  //noFill();
  strokeWeight(4);
  stroke(200);
  //  for (int i = 0; i < cordX.length; i++)
  //  {
  //    drawCircle();
  //  }
}

void drawCircles()
{
  for (int i=0; i < cordX.length; i++)
  { 
    fillCircle();
    ellipse(cordX[i], cordY[i], circleSize[i], circleSize[i]);

    if (circleSize[i] < 120)
    {
      cirXY = 0;

      circleSize[i] += 5;
    } else
    {
      circleSize[i]=0;
      cordX[i] = int(random(0, 500));
      cordY[i] = int(random(0, 500));
    }
  }
}

void fillCircle()
{
  fill(hue, saturation, brightness, 100);
  hue ++;

  if (hue == 360)
  { 
    hue = 0;
  }
}