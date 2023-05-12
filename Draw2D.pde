PGraphics imgSecond, imgMinute, imgHour, imgChain1, imgSquare;

void DrawChains(int LinkCount,int posx, int posy){
  int y = posy;
  int xStart = posx;
  imgChain1.beginDraw();
  imgChain1.stroke(0);
  imgChain1.strokeWeight(1);
  //Gråadelen av kedjan
  imgChain1.fill(200);
  for (int i = 0;i<LinkCount;i++){
    imgChain1.rect(xStart+(35*i),y,30,15);
  }
  //Hålet i kedjan
  imgChain1.fill(255);
  for (int i = 0;i<LinkCount;i++){
    imgChain1.rect(xStart+5+(35*i),y+5,20,5);
  }
  imgChain1.fill(200);
  //Enkla länken
  for (int i = 0;i<LinkCount-1;i++){
    imgChain1.rect(xStart+20+(35*i),y+5,25,5);
  }
  imgChain1.endDraw();
}

void DrawSquare(int multi){
  imgSquare.beginDraw();
    imgSquare.strokeWeight(5);
    imgSquare.stroke(212, 175, 55);
    imgSquare.line(50*multi,300*multi,300*multi,50*multi);
    imgSquare.line(300*multi,50*multi,550*multi,300*multi);
    imgSquare.line(50*multi,300*multi,300*multi,550*multi);
    imgSquare.line(300*multi,550*multi,550*multi,300*multi);
  imgSquare.endDraw();
}

void DrawSecond(int StartPos) {
  color second = color(212, 175, 55);
  imgSecond.beginDraw();
    imgSecond.strokeWeight(2);
    imgSecond.stroke(0);
    imgSecond.fill(second);
    imgSecond.rect(20,0,10,StartPos);
  imgSecond.endDraw();
}

void DrawMinute(int StartPos){
  color minute = color(200);
  int x1 = 150;
  int x3 = 0;
  int x2 = 100;
  imgMinute.beginDraw();
    imgMinute.strokeWeight(2);
    imgMinute.stroke(0);
    imgMinute.fill(minute);
    imgMinute.rect(10,x1,10,StartPos-x1);
    imgMinute.rect(20,x3,10,StartPos-x3);
    imgMinute.rect(30,x2,10,StartPos-x2);
  imgMinute.endDraw();
}

void DrawHour(int StartPos){
  //Varje block ritar en rectangle med linjer.
  int diff = 40;
  color hour = color(230);
  int x1 = 220+diff;
  int x2 = 150+diff;
  int x3 = 100+diff;
  int x4 = 200+diff;
  int x5 = 260+diff;
  imgHour.beginDraw();
    imgHour.strokeWeight(2);
    imgHour.stroke(0);
    imgHour.fill(hour);
    imgHour.rect(0,x1,10,StartPos-x1);
    imgHour.rect(10,x2,10,StartPos-x2);
    imgHour.rect(20,x3,10,StartPos-x3);
    imgHour.rect(30,x4,10,StartPos-x4);
    imgHour.rect(40,x5,10,StartPos-x5);
  imgHour.endDraw();
}
