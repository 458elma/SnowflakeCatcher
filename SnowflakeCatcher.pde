Snowflake [] tiny;
void setup()
{
  //your code here
  size(400,400);
  background(0);
  tiny = new Snowflake[250];
  for(int i = 0; i < tiny.length; i++) {
    tiny[i] = new Snowflake(); 
  }
}
void draw()
{
  //your code here
  
  for(int i = 0; i <tiny.length; i++) {
    tiny[i].erase();
    tiny[i].lookDown();
    tiny[i].move();
    tiny[i].wrap();
    tiny[i].show();
  }
 
}
void mouseDragged()
{
  //your code here
  noStroke();
  fill(255,0,0);
  ellipse(mouseX,mouseY,15,15);
}

class Snowflake
{
  //class member variable declarations
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*401);
    y = (int)(Math.random()*401);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if(((y>0)&&(y<400))&&(get(x,y+6)==color(255,0,0))) {
      isMoving = false;
    } else {
      isMoving = true; 
    }
  }
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving == true) {
      y = y+1;
    } else {
      y = y + 0;
    }
  }
  void wrap()
  {
    //your code here
    if(y>400) {
      y = 0; 
      x = (int)(Math.random()*401);
    }
  }
}


