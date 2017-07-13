class Point
{
  double x;
  double y;
  int label;
  
  Point()
  {
    x = random(width);
    y = random(height);
    
    if(x > y)
    {
      label = 1;
    }
    else
    {
      label = -1;
    }
  }
  
  // Draws the point
  public void show()
  {
    if(label == 1)
    {
      fill(255);
    }
    else
    {
      fill(0);
    }
    
    ellipse((float)x, (float)y, 8, 8);
  }
}