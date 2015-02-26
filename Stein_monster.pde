int fill1 = 255;
int fill2 = 200;
int fill3 = 0;

void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  
  //Monster 1
  fill(74, 255, 89);
  ellipse(500, 500, 325, 350); //body
  ellipse(500, 300, 250, 250); //head
  ellipse(370, 680, 150, 100); //left foot
  ellipse(620, 680, 150, 100); //right foot
  fill(255);
  ellipse(500, 280, 75, 75); //eye
  fill(0);
  ellipse(500, 280, 35, 35); 
  rect(455, 340, 100, 50);

  if (keyPressed) {
    if (key=='e') {    //makes eye blink
      fill(28, 61, 113);
      ellipse(500, 280, 75, 75);
    }
  }
  
  //Monster 2
  //body
  fill(fill1);
  triangle(mouseX, mouseY, mouseX+50, mouseY+100, mouseX-50, mouseY+100);  //(200, 250, 250, 350, 150, 350)

  //head
  fill(fill1);
  ellipse(mouseX, mouseY-40, 100, 100);    //200, 210, 100, 100

  //eyes
  fill(200);
  ellipse(mouseX-20, mouseY-60, 25, 25);      // 180, 190, 25, 25        
  ellipse(mouseX+20, mouseY-60, 25, 25);      // 220, 190, 25, 25

  //nose
  fill(200);
  triangle(mouseX, mouseY-45, mouseX+10, mouseY-30, mouseX-10, mouseY-30);      //200, 205, 210, 220, 190, 220

  //legs
  stroke(200);  
  strokeWeight(3);
  line(mouseX+25, mouseY+100, pmouseX+25, pmouseY+150);      //225, 350, 225, 380
  line(mouseX-25, mouseY+100, pmouseX-25, pmouseY+150);      //185, 350, 185, 380

  //mouth
  line(mouseX-20, mouseY-20, mouseX+20, mouseY-20);     //180, 230, 220, 230
  //teeth
  line(mouseX-5, mouseY-15, mouseX-5, mouseY-25);     //195, 225, 195, 235
  line(mouseX+5, mouseY-15, mouseX+5, mouseY-25);     //205, 225, 205, 235
  
  if(mousePressed){
   fill1 = fill3;
   fill2 = fill3;
  }
  
}
