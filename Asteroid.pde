class Asteroid extends Floater
{
	private int rotSpeed = (int)(Math.random()*3)+1;
	public Asteroid(){
	corners = 7;
	xCorners = new int []{0, -8, -10, -4, 4, 10, 8};
	yCorners = new int []{-10, -6, 2, 9 ,9, 2, -6};
	myColor = 127;
	myCenterX = Math.random()*501;
	myCenterY = Math.random()*501;
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
	public void move(){
		turn(rotSpeed);
		super.move();
		setmyDirectionX((Math.random()*3));
		setmyDirectionY((Math.random()*3));
		

	}
	



}