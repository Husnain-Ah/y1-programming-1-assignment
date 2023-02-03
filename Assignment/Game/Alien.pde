// the alien class  is the green enemy that attacks the rocket


class Alien
{
  //member variables
  float x, y; // position on screen
  int dx; // horizontal speed
  
  color ALIEN1 = color(0,255,0); // green colour
  color ALIEN2 = color(50,100,0); // dark green colour

  
  //constructor
  Alien(int x, int y, int dx)
  {
   this.x = x;
   this.y = y;
   this.dx = dx;
  }
  
  //methods
  
  void update() // runs the methods it contains
  {
    printAlien();
    move();
  }
  
  void printAlien()
  {
  //draw an alien
    fill(ALIEN1);
    ellipse(x,y,30,30);
    fill(ALIEN2);
    ellipse(x,y,50,15);
  }
  void render() // draws 3 aliens
  {
    
    for(int i=0; i<3; i++)
    {
      printAlien();
      y=y-1;
    }
  }
  
  void move() // moves to the left
  {
    x = x-dx;
  }
  
} // end class
