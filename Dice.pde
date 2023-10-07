Die bob;
int sum = 0;
void setup()
  {
    size(500,500);
    noLoop();
  }
  void draw()
  {
      
      background(185,255,245);
      for(int y = 20; y <= 450; y+=30){
        for(int x = 35; x <= 480; x+=30){
      bob = new Die(x,y);
      bob.roll();
      bob.show();
      sum = sum + bob.numDot;
        }
      }
      text("Total: " +sum,250,480);
  }
  void mousePressed()
  {
sum = 0;
      redraw();
  
  }
  class Die //models one single dice cube
  {
      int numDot;
      int myX;
      int myY;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
        numDot = (int)(Math.random()*6)+1;
      }
      void show()
      {
          stroke(255,141,192);
          fill(255,255,255);
          rect(myX,myY,20,20);
          if(numDot == 1){
            fill(255,141,192);
            ellipse(myX+10,myY+10,4,4);
          }
          else if(numDot == 2){
             fill(255,141,192);
            ellipse(myX+5,myY+5,4,4);
            ellipse(myX+15,myY+15,4,4);
          }
          else if(numDot == 3){
            fill(255,141,192);
            ellipse(myX+5,myY+5,4,4);
            ellipse(myX+10,myY+10,4,4);
            ellipse(myX+15,myY+15,4,4);
      }
      else if(numDot == 4){
        fill(255,141,192);
            ellipse(myX+5,myY+5,4,4);
            ellipse(myX+15,myY+5,4,4);
            ellipse(myX+5,myY+15,4,4);
            ellipse(myX+15,myY+15,4,4);
      }
      else if(numDot == 5){
        fill(255,141,192);
            ellipse(myX+5,myY+5,4,4);
            ellipse(myX+15,myY+5,4,4);
            ellipse(myX+10,myY+10,4,4);
            ellipse(myX+5,myY+15,4,4);
            ellipse(myX+15,myY+15,4,4);
      }
      else if(numDot == 6){
        fill(255,141,192);
        ellipse(myX+5,myY+5,4,4);
        ellipse(myX+5,myY+10,4,4);
        ellipse(myX+5,myY+15,4,4);
        ellipse(myX+15,myY+5,4,4);
        ellipse(myX+15,myY+10,4,4);
        ellipse(myX+15,myY+15,4,4);
      }
      }
  }
