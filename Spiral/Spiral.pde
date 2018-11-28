float r =40;
float theta= 0;
float start;
float xoff;
float oldlow =0;
float oldhigh =255;
float newlow=10;
float newhigh=20;

void setup() {
  size (600,600);
  background(0);

}

void draw (){
  float x= r * cos (theta);
  float y= r * sin (theta);
  float value = random (0,255);
  float m = map(value, oldlow, oldhigh, newlow, newhigh);
  xoff = xoff + 0.01;
  float n = noise(m)*xoff;
  println(n);
  
  noStroke();
  fill (0,0, value,value);
  ellipse(x+width/2, y+height/2,n,n);
  
  theta+=0.02;
  r+=0.05;
}
