float l = 10;
float nxi = 4;
float nyi = 8;

int orientation = 0;

Piece pieces[] = new Piece[7];
Piece p;

void setup(){
  size(400,800);
  
  for(int i=0; i<pieces.length; i++){
    pieces[i] = new Piece(l, nxi + i*5, nyi);
    pieces[i].type = i;
  }
  /*
  p = new Piece(l, nxi, nyi);
  p.type = 1;
  */
  frameRate(20);
  
}

void draw(){
    background(200);
    
    moveDown(2);
    
    for(int i=0; i<pieces.length; i++){
      pieces[i].move(1);
      pieces[i].display();
    }
    /*
    p.display();
    */
}

void moveDown(float vitesse){
  nyi+=vitesse;
}






/***********************************************
**********     F U N C T I O N S      **********
***********************************************/




void keyPressed(){
  //orientation 
  if (key == ' '){
    for(int i=0; i<pieces.length; i++){
      pieces[i].orientation = switchOrientation(pieces[i].orientation);
    }
  }
     
  //left or right
  int s =0;
  if (key == CODED) {
    if (keyCode == LEFT) {
      s = -1;
    }
    if (keyCode == RIGHT) {
      s = 1;
    }
  }
  
  for(int i=0; i<pieces.length; i++){
      pieces[i].moveSlide(s);
    }
  
  
}

int switchOrientation(int orientation){
    int o = 0;
    if(orientation == 0){
       o = 1;
     } else if (orientation == 1){
       o = 2;
     } else if (orientation == 2){
       o = 3;
     } else if (orientation == 3){
       o = 0;
     }
    return o;
  }