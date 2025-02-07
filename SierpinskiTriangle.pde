public void setup()
{
  size(300,300);
}
public void mouseDragged()//optional
{
  sierpinski(0, 299, 100);
}
public void sierpinski(int x, int y, int len) 
{
  if(len < 100)
    triangle(x, y, x + len, y, x + len/2, y - len);
  else{
    sierpinski(x, y, len/2);
    sierpinski(x  + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
