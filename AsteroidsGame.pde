Spaceship a = new Spaceship();//your variable declarations here
public void setup() 
{
  //your code here
  size (500,500);
  

  
}
public void draw() 
{
  //your code here
  fill(0,0,0,25);
  rect(0,0,500,500);

  a.show();
  a.move();
 
  
}
public void keyPressed(){
	if(key == 'w'){
	a.accelerate(1.5);
	}
	if(key == 'a'){
		a.turn(-1);
	}
	if(key == 'd'){
		a.turn(1);
	}
	if(key == 's'){
		a.accelerate(-1.5);
	}
	
}
