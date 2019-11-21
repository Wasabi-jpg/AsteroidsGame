class Asteroid extends Floater
{
	private int rotSpeed = (int)(Math.random()*3)+1;
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
	public void move(){
		turn(rotSpeed);
		super.move();
	}
	



}