public void setup()
{
	size(500,500);
	ellipseMode(CENTER);
}
public void draw()
{
	background(0);
	myFractal(250,250,250);
}
public void myFractal(int x, int y, int siz)
{
	ellipse(x,y,siz,siz);
	if(siz>1)
	{
		strokeWeight(0);
		stroke(50,200,150);
		myFractal(x+siz/2,y+siz/5,siz/2);
		myFractal(x-siz/2,y-siz/5,siz/2);
		strokeWeight(0);
		stroke(200,50,150);
		myFractal(x-siz/2,y+siz/2,siz/2);
		myFractal(x+siz/2,y-siz/2,siz/2);
	}
}
