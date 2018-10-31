class Shooter{
  //variables for shooter
  
  float r; // radius for shooter
  float x; //x-coordinant for shooter
  float y; //Y-coordinant for shooter
  int shooterColor; //color for shooter
  
  
  Shooter(float temp_r, float temp_x, float temp_y, int temp_shooterColor){
    r=temp_r;
    x=temp_x;
    y=temp_y;
    shooterColor=temp_shooterColor;
  }
  
  void display(){
    fill (#B7750B);
    ellipse(mouseX,y,r,r);
  }   

  void shoot(){
    if (button==true){
      //println("true");
      y=y-20;
    }
    else {
      y=320;
      //println("false");
    } 
  }
}
