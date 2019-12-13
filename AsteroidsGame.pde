// initial setup of stars, spaceship, and arraylist of asteroids
Star [] b = new Star[100];
Spaceship a = new Spaceship();//your variable declarations here
ArrayList <Asteroid> d = new ArrayList <Asteroid>();
//Asteroid c = new Asteroid();
//Bullet e = new Bullet(a);
ArrayList <Bullet> e = new ArrayList <Bullet>();
int health = 3;
public void setup() 
{
  //your code here
  size (500,500);
  //star setup
  for(int i = 0; i < b.length;i++){
  	b[i] = new Star();
  }
  //asteroids setup
  for(int i = 0; i <10;i++){
  	d.add(new Asteroid());
  	d.get(i).accelerate(2);
  }

  
}
public void draw() 
{
  //your code here
  fill(0,0,0,255);
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
  	textSize(32);
	fill(255,0,0);
	text("Health:" + health, 370,30);
	if(health==0||health<=0){
		textSize(100);
		fill(255,0,0);
		text("GAME",125,200);
		textSize(100);
		fill(255,0,0);
		text("OVER",125,275);
	}
  	if(dist(d.get(i).getmyCenterX(),d.get(i).getmyCenterY(),a.getmyCenterX(),a.getmyCenterY())<=10){
  		d.remove(i);
  		i--;
  		health--;
  		break;
  	}
  	for(int j = 0; j < e.size();j++){
  		if(dist(d.get(i).getmyCenterX(),d.get(i).getmyCenterY(),e.get(j).getmyCenterX(),e.get(j).getmyCenterY())<=10){
  			d.remove(i);
  			e.remove(j);
  			i--;

  			break;
  		}

  	}
  }
  for(int i =0; i<e.size();i++){
  	e.get(i).show();
	e.get(i).move();
	if(e.get(i).getmyCenterX()>=500){
		e.remove(i);
		i--;
	}
	else if(e.get(i).getmyCenterX()<=0){
		e.remove(i);
		i--;
	}
	else if(e.get(i).getmyCenterY()>=500){
		e.remove(i);
		i--;
	}
	else if(e.get(i).getmyCenterY()<=0){
		e.remove(i);
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
	if(key == ' '){
		e.add(new Bullet(a));
	}
	
}

