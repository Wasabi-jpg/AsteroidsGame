class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
    	corners = 3;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;
    	myColor = 255;
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
    public void setmyCenterX(double x){
        myCenterX = x;
    }
    public void setmyCenterY(double y){
        myCenterY = y;
    }
    public void setmyPointDirection(double p){
        myPointDirection = p;
    }
    public float getmyCenterX(){
        return (float) myCenterX;
    }
    public float getmyCenterY(){
        return (float) myCenterY;
    }
    public float getmyPointDirection(){
        return (float) myPointDirection;
    }
    public float getmyDirectionX(){
        return (float) myDirectionX;
    }
    public float getmyDirectionY(){
        return (float) myDirectionY;
    }




}
