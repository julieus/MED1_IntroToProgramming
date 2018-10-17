class Flower{
  //variables diffiner blomst
  
  float r; //radius of the flower petal
  int n_petals; //number of petals
  float x; //x-position of the center of the flower
  float y; //y-position of the center of the flower
  int petalColor; //number for the color of petals
  float speedx=random(1,2); //random speed
  float speedy=random(1,2);

  Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor){
    r=temp_r;
    n_petals= temp_n_petals;
    x=temp_x;
    y=temp_y;
    petalColor=temp_petalColor;
  }
  
      
void display (){
   float ballX;
   float ballY;
   
   fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
    
  ballX=x+r*cos(i);
  ballY=y+r*sin(i);
  println("ballX="+ ballX + ", ballY=" + ballY);
  ellipse(ballX,ballY,r,r);
  }
  
  fill(#FFFFFF);
  ellipse(x,y,r*1.2,r*1.2);
}

  void move () {
    x+=speedx;
    y+=speedy;
  }

void bounce() {
if (x<0) {
  speedx=-speedx;
}
 if(x>width) {
  speedx=-speedx;
}
if(y>height){
  speedy=-speedy;
}
if (y<0){
  speedy=-speedy;
}
}
}
