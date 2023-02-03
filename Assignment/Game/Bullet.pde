// the bullet class is the bullet that is shot from the rocket and atacks the alien

class Bullet
{
  //member variables
  int x, y; // position on screen
  int dx = 4; // horizontal speed


  //constructor
  Bullet(int x, int y)
  {
   this.x = x;
   this.y = y;
  }
  
  //methods
  
  void update() // runs all of the procedures that are inside it when called
  {
    render();
    move();
  }
  
  void render()   //draw a defender rocket
  {
    fill (255);
    rect(x,y,10,5);
  }
  
  void move() // moves to the right after fired
  {
    this.x = this.x+dx;
  }}
