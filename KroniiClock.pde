float s_angle, m_angle, h_angle;
//Sätt true för att manipulera klockan
boolean test = false;

void setup(){
  fullScreen();
  orientation(LANDSCAPE);
  //size(600, 600);
  imgSecond = createGraphics(50,height);
  imgMinute = createGraphics(50,height);
  imgHour = createGraphics(50,height);
  imgChain1 = createGraphics(300,35);
  imgSquare = createGraphics(1200,1200);
  int StartPos = height/2;
  imageMode(CENTER);
  if (test){
    frameRate(60);
    setTestClock(0,10,11);
  } else{
    frameRate(3);
  }
  DrawHour(StartPos);
  DrawSquare(2);
  DrawMinute(StartPos);
  DrawSecond(StartPos);
}

void draw(){
  background(255);
  //Används för att flytta hela fönstret.
  //Används för att kunna animera klockan.
  //Allt som skrivs efter translate kommer att förskjutas.
  translate(width/2,height/2);
  ThinOuterCircle();
  Square();
  if (test){
    CheckTestClock();
    testHourHand();
    testMinuteHand();
    testSecondHand();
  }else{
    HourHand();
    MinuteHand();
    SecondHand();
  }
  InnerCircle();
}

void Chains(){
  pushMatrix();
    rotate(45);
    image(imgChain1,0,0);
  popMatrix();
}

void Square(){
  pushMatrix();
    image(imgSquare,0,0);
  popMatrix();
}

void SecondHand(){
  s_angle = map(second(), 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(s_angle);
  image(imgSecond,0,0);
  popMatrix();
}

void HourHand(){
  h_angle = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2);
  pushMatrix();
  rotate(h_angle);
  image(imgHour,0,0);
  popMatrix();
}

void MinuteHand(){
  m_angle = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI);
  pushMatrix();
  rotate(m_angle);
  image(imgMinute,0,0);
  popMatrix();
}
void InnerCircle() {
  fill(210);
  strokeWeight(2);
  stroke(0);
  ellipse(0, 0, 150, 150);
}

void ThinOuterCircle() {
  strokeWeight(2);
  stroke(0);
  noFill();
  ellipse(0, 0, 400, 400);
}
