NormalParticle [] water = new NormalParticle[10];

void setup()
{
	size(512, 512);
	for (int i = 0; i<water.length; i++)
	{
		water[i] = new NormalParticle();
	}

}
void draw()
{
	water.move();
	water.show();
}
class NormalParticle
{
	double dX,dY,dSpeed,dTheta;
	NormalParticle()
	{
		dX = 256;
		dY = 256;
		dTheta = (Math.random()*3)*Math.PI;
		dSpeed = 8.25;
	}
	void move()
	{
		dX = dX+Math.cos(dTheta)*dSpeed;
		dY = dY+Math.sin(dTheta)*dSpeed;
	}
	void show()
	{
		noStroke();
		fill (0, 0, (int)(Math.random()*255)+25);
		ellipse((float)dX, (float)dY, 20, 20);
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

