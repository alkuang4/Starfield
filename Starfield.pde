Particle[] parts=new Particle[1000];
void setup(){
  size(400,500);
  for(int i=0;i< parts.length;i++)
  {
    parts[i]= new Particle();
    parts[0]= new OddballParticle();
  }
}
  void draw(){
    background(50);
    for(int i=0;i<parts.length;i++)
    {
      parts[i].show();
      parts[i].move();
  }
  }
class Particle
{
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle(){
    myX=180;
    myY=180;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*12;
    myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move(){
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,20,40);
  }
}
  class OddballParticle extends Particle 
  {
    OddballParticle(){
      myX=80;
      myY=80;
    }
    void move(){
      myX=myX+ Math.random()*2;
      myY=myY+ Math.random()*2;
    }
    void show(){
      fill(myColor);
      noStroke();
      rect((float)myX,(float)myY,20,80);
    }
  }
