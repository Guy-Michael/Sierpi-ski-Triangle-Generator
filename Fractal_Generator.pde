import java.util.Random;

int frameRate = 10;
public Point[] points = new Point[3];
public Point currentPoint;
public void setup()

{
  size(800,800);
  fill(0,0,0);
  frameRate(frameRate);
  
  points[0] = new Point(400,100);
  points[1] = new Point(50, 700);
  points[2] = new Point(750, 700);
  currentPoint = new Point(750,700);
  drawTriangle();
}

public void draw()
{
  frameRate(frameRate++);
  Point point = chooseRandomPoint();
  int x = (currentPoint.x + point.x) / 2;
  int y = (currentPoint.y + point.y) / 2;
  
  currentPoint = new Point(x,y);
  drawPoint(currentPoint);
}

public void drawTriangle()
{
  for(int i = 0; i < points.length; i++)
  {
    drawPoint(points[i]);
  }
}

public void drawPoint(Point point)
{
  ellipse(point.x, point.y, 3, 3);
}

public Point chooseRandomPoint()
{
  Random rnd = new Random();
  Point point = points[rnd.nextInt(3)];
  return point;
}
