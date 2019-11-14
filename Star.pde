class Star //note that this class does NOT extend Floater
{
  //your code here
  protected int myX;
  protected int myY;
  public Star(){
  	myX = (int)(Math.random()*501);
  	myY = (int)(Math.random()*501);
  }
  public void show(){
  	fill(255);
  	ellipse(myX,myY,3,3);
  }
}
