int counter;

void setup()
{
  size(500, 500);
  background(#ADA371);
  textAlign(CENTER, CENTER);
  noLoop();
}
void draw()
{
  background(#ADA371);
  for (int x = 0; x <= 500; x+= 50) 
    for (int y = 0; y <= 400; y+= 50) {
      Die bob =new Die(x, y);
      bob.roll();
      bob.show();
    }
  fill(0);
  text("Number Of Dots: " + counter, 250, 475);
}
void mousePressed()
{
  redraw();
  counter = 0;
}
class Die //models one single dice cube
{
  int myY;
  int myX;
  int dots;
  Die(int x, int y) //constructor
  {
    myX= x;
    myY= y;
    dots= (int)((Math.random()*6)+1);
  }
  void roll() {
    dots= (int)((Math.random()*6)+1);
    counter += dots;

    //your code here
  }
  void show()
  {
    fill((int)(Math.random()*240), (int)(Math.random()*200), (int)(Math.random()*200));
    rect(myX, myY, 49, 49);
    fill(0, 0, 0);
    if (dots==1) {
      ellipse (myX+25, myY+25, 8, 8);
    } else if (dots ==2) {
      ellipse (myX+10, myY+15, 8, 8);
      ellipse (myX+40, myY+35, 8, 8);
    } else if (dots == 3) {
      ellipse (myX+10, myY+15, 8, 8);
      ellipse (myX+25, myY+25, 8, 8);
      ellipse (myX+40, myY+35, 8, 8);
    } else if (dots == 4) {
      ellipse (myX+10, myY+10, 8, 8);
      ellipse (myX+10, myY+40, 8, 8);
      ellipse (myX+40, myY+40, 8, 8);
      ellipse (myX+40, myY+10, 8, 8);
    } else if (dots == 5) {
      ellipse (myX+10, myY+10, 8, 8);
      ellipse (myX+10, myY+40, 8, 8);
      ellipse (myX+25, myY+25, 8, 8);
      ellipse (myX+40, myY+40, 8, 8);
      ellipse (myX+40, myY+10, 8, 8);
    } else if (dots == 6) {
      ellipse (myX+10, myY+10, 8, 8);
      ellipse (myX+10, myY+40, 8, 8);
      ellipse (myX+10, myY+25, 8, 8);
      ellipse (myX+40, myY+40, 8, 8);
      ellipse (myX+40, myY+25, 8, 8);
      ellipse (myX+40, myY+10, 8, 8);
    }
  }
  {
  }
}
