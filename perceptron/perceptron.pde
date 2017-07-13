class Perceptron
{
  final double BIAS = 1;
  
  double[] weights;
  int connNum;
  
  // Cnstructer that init the weights randomly
  Perceptron(int weightsNum)
  {
    connNum = weightsNum;
    weights = new double[connNum];
    for(int i = 0; i < weightsNum; i++)
    {
      weights[i] = random(-1, 1);
    }
  }
  
  // Estimates what the ouput is based on the inputs
  public int estimate(double[] inputs)
  {
    double sum = 0;
    for(int i = 0; i < connNum; i++)
    {
      sum += weights[i] * inputs[i];
    }
    
    return activate(sum);
  }
  
  // Sign activation function (it looks at the sign of the parameter)
  private int activate(double sum)
  {
    if(sum >= 0) return 1;
    else return -1;
  }
  
  public int train()
  {
    return 0;
  }
}