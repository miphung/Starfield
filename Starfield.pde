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
	NormalParticle(double x,y;)
	{
		dX = x;
		dY = y;
	}
	void move()
	{
		dTheta = (Math.random()*3)*Math.PI;
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

