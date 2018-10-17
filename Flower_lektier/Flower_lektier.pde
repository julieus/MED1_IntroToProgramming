Flower myFlower1;
float r1=60; //radom sixe of flowers
int petals1=int (random(5,15)); //random number of petals
float x1= random(0,800); //random x-value starting point for flower
float y1= random(0,850); // random y-value starting point for flower
int petalColor1= #FA0303;
float speed1x=random(1,2); //random speed
float speed1y=random(1,2);

Flower myFlower2;
float r2=90;
int petals2=int (random(5,10));
float x2= random(0,800);
float y2= random (0,850);
int petalColor2=#0352FA;
float speed2x=random(1,3);
float speed2y=random(1,3);

Flower myFlower3;
float r3=30;
int petals3=int (random(5,20));
float x3= random(0,800);
float y3= random (0,850);
int petalColor3=#8EFA03;
float speed3x=random(1,5);
float speed3y=random(1,5);


void setup() {
  size(800,850);
  //calling the flower
myFlower1 = new Flower(r1, petals1 ,x1,y1, petalColor1 );
myFlower2 = new Flower (r2, petals2, x2,y2, petalColor2);
myFlower3 = new Flower (r3, petals3, x3,y3, petalColor3);

}

void draw(){
  background(#43AF76);

myFlower1.display();
myFlower2.display();
myFlower3.display();

myFlower1.move();
myFlower2.move();
myFlower3.move();

myFlower1.bounce();
myFlower2.bounce();
myFlower3.bounce();
}
