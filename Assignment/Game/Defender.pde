// the defender class is the rocketship that can be controlled by the player


class Defender
{
  //member variables
  int x, y; // position on screen
  int dx; // horizontal speed
  
  color DEFENDER1 = color(255,0,0); // red colour
  color DEFENDER2 = color(0,0,255); // blue colour
  
  color ALIEN1 = color(0,255,0); // green colour
  color ALIEN2 = color(50,100,0); // dark green colour
  

  //constructor
  Defender(int x, int y)
  {
   this.x = x;
   this.y = y;
  }
  
  //methods
  
  void update() // runs all of the procedures that are inside it when called
  {
    render();
    wall();
    crash();
    doCrash();
  }
  
  void render()   //draw a defender rocket
  {
    fill(DEFENDER1);
    rect(x,y+10,50,20);
    triangle(x+50,y+10,x+50,y+30,x+60,y+20);
    fill(DEFENDER2);
    rect(x,y,20,10);
  }
 
  void moveLeft() // the move procedures are for the controls that move the defenders red rocket by 10 pikxels in the direction of the arrow key that the player presses on
  {
   x = x-10 ;
  }
  
  void moveRight()
  {
   x = x+10 ;
  }
  
  void moveUp()
  {
   y = y-10 ;
  }
  
  void moveDown()
  {
   y = y+10 ;
  }
  
  void wall() // this detects if the defender are in contact with a wall and moves them back by 10 pixels if they are
   {
     if (this.x > width - 70 )
     {
     x = x-10;
     }
     if ( this.x < 10)
     {
     x=x+10;
     }
     
     if (this.y > height - 40)
     {
     y=y-10;
     }
     
     if (this.y < 10)
     {
     y=y+10;
     }
   }  
   
   boolean crash() // this returns the value 'true' if the stated pixel(s) are touching the green colours that make up the aliens 
   {
     //color test = get(this.x+60,this.y);
     //return (test == ALIEN1) || (test == ALIEN2);
     
      int k=y;
      int g=x+60;
      
      for(int i = 0; i < 33; i++)
      {
           
        color test = get(g,k);
        k= k + 1;
        return (test == ALIEN1) || (test == ALIEN2);  
      }
        
       return false; 
   }
   
   void doCrash() // if crash returns true the game is closed
   {
     if (crash() == true)
     {
       exit();
     }
   }
   

  
 
} // end class
