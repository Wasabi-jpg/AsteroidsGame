// initial setup of stars, spaceship, and arraylist of asteroids
Star [] b = new Star[100];
Spaceship a = new Spaceship();//your variable declarations here
ArrayList <Asteroid> d = new ArrayList <Asteroid>();
//Asteroid c = new Asteroid();
public void setup() 
{
  //your code here
  size (500,500);
  //star setup
  for(int i = 0; i < b.length;i++){
  	b[i] = new Star();
  }
  //asteroids setup
  for(int i = 0; i <5;i++){
  	d.add(new Asteroid());
  	d.get(i).accelerate(2);
  }

  
}
public void draw() 
{
  //your code here
  fill(0,0,0,250);
  rect(0,0,500,500);

  //star background display
  for(int i = 0; i<b.length;i++){
  	b[i].show();
  }

  a.show();
  a.move();
 // c.show();
 // c.move();
 //asteroids displayed w/motion values from move()
  for(int i = 0; i < d.size();i++){
  	d.get(i).show();
  	d.get(i).move();
  	if(dist(d.get(i).getMyCenterX(),d.get(i).getMyCenterY(),a.getMyCenterX(),a.getMyCenterY())<2){
  		d.remove(i);
  		i--;
  	}
  }


 
  
}
//spaceship motion keys
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
