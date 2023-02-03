//portfolio 4 alien defender game

// the game class runs the entire game


PImage background; 
int bgX=0; //global variable background location

Alien alien1;
Defender defender1;
Bullet bullet1;



void setup(){
  size(800,400);
  background = loadImage("spaceBackground.jpg");
  background.resize(width,height); //set image to be same size as the canvas
  
  alien1 = new Alien(width/2, height/2, 2);
  bullet1 = new Bullet(width/5, height/2);
  defender1 = new Defender(width/5, height/2);
}

void draw ()
{
    //scrolling background image
    image(background, bgX, 0); //draw image to fill the canvas
    //draw image again off the right of the canvas
    image(background, bgX+background.width, 0);    
    bgX = bgX- 4;
    if(bgX == -background.width) //if first image completely off the canvas
    {
      bgX=0; //reset back to initial value background
    }
    
    alien1.update();
    bullet();
    defender1.update();
    
}

void keyPressed() // the controls for the defender
  {
    
    if (key==CODED)
    {
   
      if (keyCode==LEFT)
      {
      print("left ");
      defender1.moveLeft();
      }
    
      else if (keyCode==RIGHT)
      {
      print("right ");
      defender1.moveRight();
      }
    
      else if (keyCode==UP)
      {
      print("up ");
      defender1.moveUp();
      }
    
      else if (keyCode==DOWN)
      {
      print("down ");
      defender1.moveDown();
      }
    
    }
    
    
    
  }
  
  void bullet() // runs bullet1.update() after the spacebar is pressed
  {
   if (key == ' ')
    {
     print ("space ");
     bullet1.update();
    } 
  }
