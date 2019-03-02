class Piece{
  int type;
  float l;
  float nx;
  float ny;
  int orientation;
  
  Piece(float temp_l, float temp_nx, float temp_ny){
    nx = temp_nx;
    ny = temp_ny;
    l = temp_l;
    type = int(random(0,7));
  }
  
  void display(float l,float nx, float ny, int orientation){
    switch(type){
      case 0:
        I(l, nx, ny, orientation);
        break;
      case 1:
        J(l, nx, ny, orientation);
        break;
      case 2:
        L(l, nx, ny, orientation);
        break;
      case 3:
        O(l, nx, ny, orientation);
        break;
      case 4:
        S(l, nx, ny, orientation);
        break;
      case 5:
        T(l, nx, ny, orientation);
        break;
      case 6:
        Z(l, nx, ny, orientation);
        break;
    }
  }
  
  void move(float vitesse){
    ny+=vitesse;
  }
  
  
  
void L(float l,float nxi, float nyi, int orientation){
  if(orientation == 0){
    rect(nxi*l, nyi*l, l, l);
    for(int i=0; i<3; i++){
      rect((nxi-1)*l, (nyi-i)*l, l, l);
    }
  } 
  else if (orientation == 1){
    rect(nxi*l, nyi*l, l, l);
    for(int i=0; i<3; i++){
      rect((nxi+i)*l, (nyi-1)*l, l, l);
    }
  }
  else if (orientation == 2){
    rect(nxi*l, nyi*l, l, l);
    for(int i=0; i<3; i++){
      rect((nxi+1)*l, (nyi+i)*l, l, l);
    }
  }
  else if (orientation == 3){
    rect(nxi*l, nyi*l, l, l);
    for(int i=0; i<3; i++){
      rect((nxi-i)*l, (nyi+1)*l, l, l);
    }
  }
}

  void J(float l,float nxi, float nyi, int orientation){
    if(orientation == 0){
      rect(nxi*l, nyi*l, l, l);
      for(int i=0; i<3; i++){
        rect((nxi+1)*l, (nyi-i)*l, l, l);
      }
    } 
    else if (orientation == 1){
      rect(nxi*l, nyi*l, l, l);
      for(int i=0; i<3; i++){
        rect((nxi+i)*l, (nyi+1)*l, l, l);
      }
    }
    else if (orientation == 2){
      rect(nxi*l, nyi*l, l, l);
      for(int i=0; i<3; i++){
        rect((nxi-1)*l, (nyi+i)*l, l, l);
      }
    }
    else if (orientation == 3){
      rect(nxi*l, nyi*l, l, l);
      for(int i=0; i<3; i++){
        rect((nxi-i)*l, (nyi-1)*l, l, l);
      }
    }
  }
  
  void T(float l,float nxi, float nyi, int orientation){
    if(orientation == 0){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi-1)*l, (nyi)*l, l, l);
      rect((nxi)*l, (nyi-1)*l, l, l);
      rect((nxi+1)*l, (nyi)*l, l, l);
    } 
    else if (orientation == 1){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi)*l, (nyi-1)*l, l, l);
      rect((nxi+1)*l, (nyi)*l, l, l);
      rect((nxi)*l, (nyi+1)*l, l, l);
    }
    else if (orientation == 2){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi+1)*l, (nyi)*l, l, l);
      rect((nxi)*l, (nyi+1)*l, l, l);
      rect((nxi-1)*l, (nyi)*l, l, l);
    }
    else if (orientation == 3){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi)*l, (nyi+1)*l, l, l);
      rect((nxi-1)*l, (nyi)*l, l, l);
      rect((nxi)*l, (nyi-1)*l, l, l);
    }
  }
  
  void Z(float l,float nxi, float nyi, int orientation){
    if(orientation == 0){
      rect(nxi*l, nyi*l, l, l);
      rect(nxi*l, (nyi+1)*l, l, l);
      rect((nxi-1)*l, (nyi+1)*l, l, l);
      rect((nxi-1)*l, (nyi+2)*l, l, l);
    } 
    else if (orientation == 1){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi-1)*l, (nyi)*l, l, l);
      rect((nxi-1)*l, (nyi-1)*l, l, l);
      rect((nxi-2)*l, (nyi-1)*l, l, l);
    }
    else if (orientation == 2){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi)*l, (nyi-1)*l, l, l);
      rect((nxi+1)*l, (nyi-1)*l, l, l);
      rect((nxi+1)*l, (nyi-2)*l, l, l);
    }
    else if (orientation == 3){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi+1)*l, (nyi)*l, l, l);
      rect((nxi+1)*l, (nyi+1)*l, l, l);
      rect((nxi+2)*l, (nyi+1)*l, l, l);
    }
  }
  
  void S(float l,float nxi, float nyi, int orientation){
    if(orientation == 0){
      rect(nxi*l, nyi*l, l, l);
      rect(nxi*l, (nyi+1)*l, l, l);
      rect((nxi+1)*l, (nyi+1)*l, l, l);
      rect((nxi+1)*l, (nyi+2)*l, l, l);
    } 
    else if (orientation == 1){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi-1)*l, (nyi)*l, l, l);
      rect((nxi-1)*l, (nyi+1)*l, l, l);
      rect((nxi-2)*l, (nyi+1)*l, l, l);
    }
    else if (orientation == 2){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi)*l, (nyi-1)*l, l, l);
      rect((nxi-1)*l, (nyi-1)*l, l, l);
      rect((nxi-1)*l, (nyi-2)*l, l, l);
    }
    else if (orientation == 3){
      rect(nxi*l, nyi*l, l, l);
      rect((nxi+1)*l, (nyi)*l, l, l);
      rect((nxi+1)*l, (nyi-1)*l, l, l);
      rect((nxi+2)*l, (nyi-1)*l, l, l);
    }
  }
  
  void I(float l, float nxi, float nyi, int orientation){
    if(orientation == 0){
        for(int i=0; i<4; i++){
           rect((nxi + i)*l, nyi*l, l, l);
        }
      } 
      else if (orientation == 1){
        for(int i=0; i<4; i++){
           rect(nxi*l, (nyi + i)*l, l, l);
        }
      }
      else if (orientation == 2){
        for(int i=0; i<4; i++){
           rect((nxi - i)*l, nyi*l, l, l);
        }
      }
      else if (orientation == 3){
        for(int i=0; i<4; i++){
           rect(nxi*l, (nyi - i)*l, l, l);
        }
      }
  }
  
  void O(float l, float nxi, float nyi, int orientation){
    for(int i=0; i<2; i++){
      for(int j=0; j<2; j++){
        rect((nxi+i)*l, (nyi+j)*l, l, l);
      }
    }
  }
}