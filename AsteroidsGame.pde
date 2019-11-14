Star [] b = new Star[100];
Spaceship a = new Spaceship();//your variable declarations here
public void setup() 
{
  //your code here
  size (500,500);
  for(int i = 0; i < b.length;i++){
  	b[i] = new Star();
  }
  

  
}
public void draw() 
{
  //your code here
  fill(0,0,0,250);
  rect(0,0,500,500);
  
  for(int i = 0; i<b.length;i++){
  	b[i].show();
  }

  a.show();
  a.move();
 
  
}
public void keyPressed(){
	if(key == 'w'){
	a.accelerate(0.5);
	}
	if(key == 'a'){
		a.turn(-10);
	}
	if(key == 'd'){
		a.turn(10);
	}
	if(key == 's'){
		a.accelerate(-0.5);
	}
	if(key == 'h'){
		a.setmyDirectionX(0);
		a.setmyDirectionY(0);
		a.setmyCenterX((Math.random()*500)+1);
		a.setmyCenterY((Math.random()*500)+1);
		a.setmyPointDirection(Math.random()*361);
	}
	
}
