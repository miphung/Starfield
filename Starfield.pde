Particle [] water = new Particle[100];

void setup()
{
	size(512, 512);
	frameRate(4.3);
	for (int i = 0; i<water.length; i++)
	{
		water[i] = new NormalParticle();
	}
	water[1] = new OddballParticle();
	water[2] = new JumboParticle();

}
void draw()
{
	background(255);	 
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
	double x, y, speed, angle;
	OddballParticle()
	{
		x = 300;
		y = 200;
		speed = 2.25;
		angle= (Math.random()*.2)*Math.PI;
	}

	public void move()
	{
		x = x+Math.cos(angle)*speed;
		y = y+Math.cos(angle)*speed;
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
		fill(255,20,147);
		ellipse((float)dX, (float)dY, 60, 60);
	}
}