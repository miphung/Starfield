Particle [] water = new Particle[100];

void setup()
{
	size(512, 512);
	//frameRate();
	for (int i = 0; i<water.length; i++)
	{
		water[i] = new NormalParticle();
	}
	water[1] = new OddballParticle();
	water[2] = new JumboParticle();

}
void draw()
{
	background(25,25,112);	 
	for (int i=0;i<water.length; i++)
	{
		water[i].move();
		water[i].show();
	}
}
class NormalParticle implements Particle
{
	double dX,dY,dSpeed,dTheta;

	NormalParticle()
	{
		dX = 256;
		dY = 256;
		dSpeed = 8.25;
		dTheta = Math.random()*Math.PI;
	}
	public void move()
	{
		dX = dX+Math.cos(2.03)*dSpeed;
		dY = dY+Math.sin(2.03)*dSpeed;

	}
	public void show()
	{
		noStroke();
		fill(255);
		ellipse((float)dX, (float)dY, 2, 2);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle 
{
	double x, y, speed, angle, directionX, directionY;
	OddballParticle()
	{
		directionX = x;
		directionY = y;
		x=300;
		y=20;
	}

	public void move()
	{
		if (x>512 || y>512)
		{
			directionX-=1;
			directionY-=1;
		}
		else if (x<=0 || y<=0)
		{
			directionX+=1;
			directionY+=1;
		}
		else
		{
			directionX= x+Math.random()*2;
			directionY = y + Math.random()*2;
		}
	}
	public void show()
	{
		noStroke();
		fill(255,127,80);
		ellipse((float)x, (float)y, 30, 30);
	}

}
class JumboParticle extends NormalParticle
{
	public void show()
	{
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		ellipse((float)dX, (float)dY, 60, 60);
	}
}