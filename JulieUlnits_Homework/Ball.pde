class Ball {
  //variables for ball

  float r; //radius for ball
  float x; //x-position for ball
  float y; // y-position for ball
  int ballColor; //color of the ball
  float speedx=random(1, 3);//random speed
  float speedy=random(1, 3);

  Ball(float temp_r, float temp_x, float temp_y, int temp_ballColor) {
    r=temp_r;
    x=temp_x;
    y=temp_y;
    ballColor=temp_ballColor;
  }

  void display() {
    float ballX;
    float ballY;

    fill(ballColor);
    for (float i=0; i<PI*2; i+=2*PI) {
      ballX=x+r*cos(i);
      ballY=y+r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
  }
  void move() {
    //making the ball move
    //println(speedy);
    x+=speedx;
    y+=speedy;
  }

  void bounce() {
    //making the ball bounce
    if (x<=-r) {
      speedx=-speedx;
    }
    if (x>width -r) {
      speedx=-speedx;
    }
    if (y>height+r) {
      speedy=-speedy;
    }
    if (y<0) {
      speedy=-speedy;
    }
    if((myShooter.x >= myBall.x-(myBall.r/2)) && (myShooter.x <= myBall.x+myBall.r/2) 
  && (myShooter.y >= myBall.y-(myBall.r/2) && (myShooter.y <= myBall.y+myBall.r/2))) {
      println(true);
      score++;
      button=false;
    }
  }
} 
