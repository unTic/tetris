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
  //p = new Piece(l, nxi, nyi);
  frameRate(2);
  
}

void draw(){
    background(200);
    
    moveDown(2);
    
    for(int i=0; i<pieces.length; i++){
      pieces[i].display(l, nxi + i*5, nyi, orientation);
    }
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
     orientation = switchOrientation(orientation);
  }
     
  //left or right
  if (key == CODED) {
    if (keyCode == LEFT) {
      nxi--;
    }
    if (keyCode == RIGHT) {
      nxi++;
    }
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