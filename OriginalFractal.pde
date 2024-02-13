public void setup() {
  size(1300, 1300);
}

public void draw() {
  background(203,243,255);
  squareFractal(250, 250, 800, 4);
}

public void squareFractal(int x, int y, int len, int wid) {
  if (wid==0){
    fill(0,0,(int)(Math.random()*256));
    rect(x,y,len,len);
  } 
 else{
   fill(0,0,(int)(Math.random()*256));
    squareFractal(x,y,(len/3),wid-1);
    fill(70,173,255); 
    squareFractal(x+(len/3)*2,y,(len/3),wid-1);
    fill(70,173,255-20); 
    squareFractal(x,y+(len/3)*2,(len/3),wid-1);
    fill(70,173,255-40); 
    squareFractal(x+(len/3)*2,y+(len/3)*2,(len/3),wid-1);
    fill(70,173,255-60); 
    squareFractal(x+(len/3),y,(len/3),wid-1);
    fill(70,173,355-80); 
    squareFractal(x,y+(len/3),(len/3),wid-1);
    fill(70,173,355-100); 
    rect(x+(len/3),y +(len/3),(len/3),(len/3));
  }
}
