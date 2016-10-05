NormalParticle [] water = new NormalParticle[100];

void setup()
{
	size(512, 512);
	for (int i = 0; i<water.length; i++)
	{
		water[i] = new NormalParticle();
	}
	water[0] = new OddballParticle();
	water[1] = new JumboParticle();

}
void draw()
{
	for (int i=0;i<water.length; i++)
	{
		water[i].move();
		water[i].show();
	}
}
class NormalParticle implements Particle
{
	double dX,dY,dSpeed,dTheta;
	int particleColor;
	int r = (int)(Math.random()*255);
	int g = (int)(Math.random()*255);
	int b = (int)(Math.random()*255);

	NormalParticle()
	{
		dX = 256;
		dY = 256;
		dSpeed = 8.25;
		dTheta = (Math.random()*2)*Math.PI;
		particleColor = color (r,g,b);
	}
	public void move()
	{
		dX = dX+Math.cos(dTheta)*dSpeed;
		dY = dY+Math.sin(dTheta)*dSpeed;
	}
	public void show()
	{
		noStroke();
		fill(particleColor);
		ellipse((float)dX, (float)dY, 20, 20);
	}
	
}
interface Particle
{
	public void move();
	public void show();
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

