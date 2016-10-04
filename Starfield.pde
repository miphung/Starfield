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
	int r = (int)(Math.random()*255);
	int g = (int)(Math.random()*255);
	int b = (int)(Math.random()*255);

	NormalParticle()
	{
		dX = 256;
		dY = 256;
		dTheta = (Math.random()*3)*Math.PI;
		dSpeed = 8.25;
	}
	
}
interface Particle
{
	public void move()
	{
		dX = dX+Math.cos(dTheta)*dSpeed;
		dY = dY+Math.sin(dTheta)*dSpeed;
	}
	public void show()
	{
		noStroke();
		color c = color(r, g, b);
		ellipse((float)dX, (float)dY, 20, 20);
	}
}
class OddballParticle implements Particle 
{
	public void move()
	{
		
	}
	public void show()
	{
		ellipse((float)dX, (float)dY, 30, 30);
	}

}
class JumboParticle implements Particle
{
	public void move()
	{
		
	}
	public void show()
	{
		ellipse((float)dX, (float)dY, 60, 60);
	}

}

