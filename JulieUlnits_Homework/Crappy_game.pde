Ball myBall;
float br=50;
float bx=random(0,640);
float by=random(0,360);
int ballColor=#FA0505;
float speedx=random(1,3);
float speedy=random(1,3);

Shooter[] shooterArray;
Shooter myShooter;
float sr=20;
float sx=320;
float sy=320;
int shooterColor=#B7750B;

float display_lw=80;
float fieldW;
int score=0;

boolean button=false;
boolean state=false;

void setup(){
  size (640,360);
  //calling the ball and the shooter
  myBall= new Ball (br,bx,by,ballColor);
  myShooter = new Shooter (sr,sx,sy,shooterColor);
  
  shooterArray = new Shooter[10];
  
   //score
  textSize(50);
  textAlign(CENTER);
  if (state==false) {
    fill(#FFFFFF);
    text(score, fieldW+display_lw/2, display_lw);
  }
}

void draw(){
  background(#000000);
  
  //calling my classes
  myBall.display();
  myBall.move();
  myBall.bounce();
  
  //calling for a new shooter every time i shoot
  myShooter.display();
  myShooter.shoot();
  for(int i = 0; i < shooterArray.length; i++) {
    if(shooterArray[i] != null)
      shooterArray[i].display();
  }

 //score
  textSize(50);
  textAlign(CENTER);
  if (state==false) {
  fill(#FFFFFF);
  text(score, fieldW+display_lw/2, display_lw);
  }
}
 
//shoot
  void keyPressed(){
    //making a new shooter everytime i shoot
   shooterArray[0] = new Shooter(myShooter.r, myShooter.x+20, myShooter.y, #FF0000);
   shooterArray[0].shoot();
  button=true;
  }
  void keyReleased(){
    button=false; 
  }
 
