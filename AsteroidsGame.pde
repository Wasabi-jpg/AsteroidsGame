Spaceship a = new Spaceship();//your variable declarations here
public void setup() 
{
  //your code here
  size (500,500);
  background(0);

  
}
public void draw() 
{
  //your code here

  a.show();
  a.move();
 
  
}
public void keyPressed(){
	if(key == CODED){
		if(keyCode==UP){
			a.accelerate(1.5);
		}
		if(keyCode==DOWN){
			a.accelerate(-1.5);
		}
		if(keyCode==LEFT){
			a.turn(-30);
		}
		if(keyCode==RIGHT){
			a.turn(30);
		}
	}
}
