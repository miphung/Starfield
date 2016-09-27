NormalParticle water = new NormalParticle();

void setup()
{
	size(512, 512);
}
void draw()
{
	water.move();
	water.show();
}
class NormalParticle
{
	double dX,dY,dSpeed,dTheta;
	color c = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	NormalParticle(double x,y;)
	{
		dX = x;
		dY = y;
		dTheta = (Math.random()*3)*Math.PI;
		dSpeed = 8.25;
	}
	void move()
	{
		dX= x+Math.cos(dTheta) *dSpeed;
		dY = y+Math.sin(dTheta)*dSpeed;
	}
	void show()
	{

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

