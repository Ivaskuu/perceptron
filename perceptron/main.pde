Point[] points;
Perceptron perceptron;

// Needed to set the propreties of the window
void settings()
{
  size(500, 500);
}

void setup()
{ 
  perceptron = new Perceptron(2);
  double[] inputs = new double[] {-1, 0.5};

  points = new Point[150];
  for(int i = 0; i < points.length; i++)
  {
    points[i] = new Point();
  }
  
  println("The perceptron returned : " + perceptron.estimate(inputs));
}

void draw()
{
  background(255);
  stroke(0);
  
  line(0, 0, width, height);
  
  for(int i = 0; i < points.length; i++)
  {
    points[i].show();
  }
}