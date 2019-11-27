class Asteroid extends Floater
{
	protected int rotSpeed = (int)(Math.random()*3)+1;
	public Asteroid(){
	corners = 7;
	xCorners = new int []{0, -8, -10, -4, 4, 10, 8};
	yCorners = new int []{-10, -6, 2, 9 ,9, 2, -6};
	myColor = 127;
	myCenterX = 250;
	myCenterY = 250;
	myDirectionX = 0;
	myDirectionY = 0;
	myPointDirection = 0;

	}
	public void setmyDirectionX(double x){
		myDirectionX = x;
	}
	public void setmyDirectionY(double y){
		myDirectionY = y;
	}
	public void setmyPointDirection(double p){
		myPointDirection = p;
	}
	public void move(){
		turn(rotSpeed);
		super.move();
		setmyDirectionX((Math.random()*5)-2);
		setmyDirectionY((Math.random()*5)-2);
		setmyPointDirection(Math.random()*361);

	}
	



}