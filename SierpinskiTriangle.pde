public void setup()
{
  size(300,300);
}
public void draw()
{
   sierpinski(0, 299, 100);
   sierpinski(50, 200, 100);
   sierpinski(100, 299, 100);
   sierpinski(150, 200, 100);
   sierpinski(200, 299, 100);
   sierpinski(100, 100, 100);
}
public void sierpinski(int x, int y, int len) 
{
  if(len < 100){
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else{
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    sierpinski(x, y, len/2);
    sierpinski(x  + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
