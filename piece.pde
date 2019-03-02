class Piece{
  int type;
  float l;
  float nx;
  float ny;
  int orientation;
  PVector pos[] = new PVector[4]; // store the x et y position
  
  Piece(float temp_l, float temp_nx, float temp_ny){
    nx = temp_nx;
    ny = temp_ny;
    l = temp_l;
    type = int(random(0,7));
    
    for(int i=0; i<pos.length; i++){
      pos[i] = new PVector();
    }
  }
  
  void display(){
    for(int i=0; i<pos.length; i++){
      rect(pos[i].x, pos[i].y, l, l); 
    }
  }
  
  void move(float vitesse){
    ny+=vitesse;
    computePos();
  }
  
  void moveSlide(int s){
    // s = -1 Left // s = 1 Right;
      nx += s;
      computePos();
  }
  
  void computePos(){
    switch(type){
      case 0:
        L();
        break;
      case 1:
        J();
        break;
      case 2:
        I();
        break;
      case 3:
        O();
        break;
      case 4:
        S();
        break;
      case 5:
        T();
        break;
      case 6:
        Z();
        break;
    }
  }
  
  
void L(){
  
  pos[0].x = nx*l;
  pos[0].y = ny*l;
  
  if(orientation == 0){
    for(int i=0; i<3; i++){
      pos[i+1].x = (nx-1)*l;
      pos[i+1].y = (ny-i)*l;
    }
  } 
  else if (orientation == 1){
    for(int i=0; i<3; i++){
      pos[i+1].x = (nx+i)*l;
      pos[i+1].y = (ny-1)*l;
    }
  }
  else if (orientation == 2){
    for(int i=0; i<3; i++){
      pos[i+1].x = (nx+1)*l;
      pos[i+1].y = (ny+i)*l;
    }
  }
  else if (orientation == 3){
    for(int i=0; i<3; i++){
      pos[i+1].x = (nx-i)*l;
      pos[i+1].y = (ny+1)*l;
    }
  }
}

  void J(){
    if(orientation == 0){
      rect(nx*l, ny*l, l, l);
      for(int i=0; i<3; i++){
        rect((nx+1)*l, (ny-i)*l, l, l);
      }
    } 
    else if (orientation == 1){
      rect(nx*l, ny*l, l, l);
      for(int i=0; i<3; i++){
        rect((nx+i)*l, (ny+1)*l, l, l);
      }
    }
    else if (orientation == 2){
      rect(nx*l, ny*l, l, l);
      for(int i=0; i<3; i++){
        rect((nx-1)*l, (ny+i)*l, l, l);
      }
    }
    else if (orientation == 3){
      rect(nx*l, ny*l, l, l);
      for(int i=0; i<3; i++){
        rect((nx-i)*l, (ny-1)*l, l, l);
      }
    }
  }
  
  void T(){
    if(orientation == 0){
      rect(nx*l, ny*l, l, l);
      rect((nx-1)*l, (ny)*l, l, l);
      rect((nx)*l, (ny-1)*l, l, l);
      rect((nx+1)*l, (ny)*l, l, l);
    } 
    else if (orientation == 1){
      rect(nx*l, ny*l, l, l);
      rect((nx)*l, (ny-1)*l, l, l);
      rect((nx+1)*l, (ny)*l, l, l);
      rect((nx)*l, (ny+1)*l, l, l);
    }
    else if (orientation == 2){
      rect(nx*l, ny*l, l, l);
      rect((nx+1)*l, (ny)*l, l, l);
      rect((nx)*l, (ny+1)*l, l, l);
      rect((nx-1)*l, (ny)*l, l, l);
    }
    else if (orientation == 3){
      rect(nx*l, ny*l, l, l);
      rect((nx)*l, (ny+1)*l, l, l);
      rect((nx-1)*l, (ny)*l, l, l);
      rect((nx)*l, (ny-1)*l, l, l);
    }
  }
  
  void Z(){
    if(orientation == 0){
      rect(nx*l, ny*l, l, l);
      rect(nx*l, (ny+1)*l, l, l);
      rect((nx-1)*l, (ny+1)*l, l, l);
      rect((nx-1)*l, (ny+2)*l, l, l);
    } 
    else if (orientation == 1){
      rect(nx*l, ny*l, l, l);
      rect((nx-1)*l, (ny)*l, l, l);
      rect((nx-1)*l, (ny-1)*l, l, l);
      rect((nx-2)*l, (ny-1)*l, l, l);
    }
    else if (orientation == 2){
      rect(nx*l, ny*l, l, l);
      rect((nx)*l, (ny-1)*l, l, l);
      rect((nx+1)*l, (ny-1)*l, l, l);
      rect((nx+1)*l, (ny-2)*l, l, l);
    }
    else if (orientation == 3){
      rect(nx*l, ny*l, l, l);
      rect((nx+1)*l, (ny)*l, l, l);
      rect((nx+1)*l, (ny+1)*l, l, l);
      rect((nx+2)*l, (ny+1)*l, l, l);
    }
  }
  
  void S(){
    if(orientation == 0){
      rect(nx*l, ny*l, l, l);
      rect(nx*l, (ny+1)*l, l, l);
      rect((nx+1)*l, (ny+1)*l, l, l);
      rect((nx+1)*l, (ny+2)*l, l, l);
    } 
    else if (orientation == 1){
      rect(nx*l, ny*l, l, l);
      rect((nx-1)*l, (ny)*l, l, l);
      rect((nx-1)*l, (ny+1)*l, l, l);
      rect((nx-2)*l, (ny+1)*l, l, l);
    }
    else if (orientation == 2){
      rect(nx*l, ny*l, l, l);
      rect((nx)*l, (ny-1)*l, l, l);
      rect((nx-1)*l, (ny-1)*l, l, l);
      rect((nx-1)*l, (ny-2)*l, l, l);
    }
    else if (orientation == 3){
      rect(nx*l, ny*l, l, l);
      rect((nx+1)*l, (ny)*l, l, l);
      rect((nx+1)*l, (ny-1)*l, l, l);
      rect((nx+2)*l, (ny-1)*l, l, l);
    }
  }
  
  void I(){
    if(orientation == 0){
        for(int i=0; i<4; i++){
           rect((nx + i)*l, ny*l, l, l);
        }
      } 
      else if (orientation == 1){
        for(int i=0; i<4; i++){
           rect(nx*l, (ny + i)*l, l, l);
        }
      }
      else if (orientation == 2){
        for(int i=0; i<4; i++){
           rect((nx - i)*l, ny*l, l, l);
        }
      }
      else if (orientation == 3){
        for(int i=0; i<4; i++){
           rect(nx*l, (ny - i)*l, l, l);
        }
      }
  }
  
  void O(){
    for(int i=0; i<2; i++){
      for(int j=0; j<2; j++){
        rect((nx+i)*l, (ny+j)*l, l, l);
      }
    }
  }
}