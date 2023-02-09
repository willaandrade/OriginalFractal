public void setup(){
  size(1000,750);
}

public void draw(){
  background(30,80,35);
  drawBears(500,500,500);
}

public void oneBear(int x, int y,int sz){
  fill(160,90,10);
  strokeWeight(1);
  noStroke();
  ellipse(x,y,sz,sz);
  noFill();
  stroke(0);
  arc(x-(sz/5),y-(sz/10),sz/4.5,sz/5,3.4,6);
  arc(x+(sz/5),y-(sz/10),sz/4.5,sz/5,3.4,6);
  arc(x-(sz/10),y+(sz/5),sz/5,sz/5,0,3.14);
  arc(x+(sz/10),y+(sz/5),sz/5,sz/5,0,3.14);
  fill(0);
  triangle(x-(sz/10),y+(sz/15),x+(sz/10),y+(sz/15),x,y+(sz/5));
}

public void drawBears(int x, int y, int sz){
  if(sz<2){
    oneBear(x,y,sz);
}
else{
  oneBear(x,y,sz);
  sz = sz/2;
  drawBears(x-sz,y-sz,sz);
  drawBears(x+sz,y-sz,sz);
}
}
