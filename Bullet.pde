class Bullet extends Floater
{
	public Bullet(Spaceship a){
		myCenterX = a.getmyCenterX();
		myCenterY = a.getmyCenterY();
		myPointDirection = a.getmyPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX =  5 * Math.cos(dRadians) + a.getmyDirectionX();
		myDirectionY =  5 * Math.sin(dRadians) + a.getmyDirectionY();
		myColor = 255;
	}
	public void show(){
		fill(255,0,0);

		ellipse((float)myCenterX,(float)myCenterY,10,10);
		super.show();
	}
	public float getmyCenterX(){
		return (float) myCenterX;
	}
	public float getmyCenterY(){
		return (float) myCenterY;
	}
}