class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid(){
	rotSpeed = (int)(Math.random()*3)+1;
	corners = 7;
	xCorners = new int []{0, -8, -10, -4, 4, 10, 8};
	yCorners = new int []{-10, -6, 2, 9 ,9, 2, -6};
	myColor = 127;
	myCenterX = Math.random()*501;
	myCenterY = Math.random()*501;
	myDirectionX = 0;
	myDirectionY = 0;
	myPointDirection = Math.random()*361;

	}
	

	public void move(){
		turn(rotSpeed);
		super.move();
		
	}
	public float getmyCenterX(){
		return (float) myCenterX;

	}
	public float getmyCenterY(){
		return (float) myCenterY;

	}

	



}