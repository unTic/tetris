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
    
    pos[0].x = nx*l;
    pos[0].y = ny*l;
    
    if(orientation == 0){
      for(int i=0; i<3; i++){
        pos[i+1].x = (nx+1)*l;
        pos[i+1].y = (ny-i)*l;
      }
    } 
    else if (orientation == 1){
      for(int i=0; i<3; i++){
        pos[i+1].x = (nx+i)*l;
        pos[i+1].y = (ny+1)*l;
      }
    }
    else if (orientation == 2){
      for(int i=0; i<3; i++){
        pos[i+1].x = (nx-1)*l;
        pos[i+1].y = (ny+i)*l;
      }
    }
    else if (orientation == 3){
      for(int i=0; i<3; i++){
        pos[i+1].x = (nx-i)*l;
        pos[i+1].y = (ny-1)*l;
      }
    }
  }
  
  void T(){
    pos[0].x = nx*l;
    pos[0].y = ny*l;
    if(orientation == 0){
      pos[1].x = (nx-1)*l;
      pos[1].y = (ny)*l;
      pos[2].x = (nx)*l;
      pos[2].y = (ny-1)*l;
      pos[3].x = (nx+1)*l;
      pos[3].y = (ny)*l;
    } 
    else if (orientation == 1){
      pos[1].x = (nx)*l;
      pos[1].y = (ny-1)*l;
      pos[2].x = (nx+1)*l;
      pos[2].y = (ny)*l;
      pos[3].x = (nx)*l;
      pos[3].y = (ny+1)*l;
    }
    else if (orientation == 2){
      pos[1].x = (nx+1)*l;
      pos[1].y = (ny)*l;
      pos[2].x = (nx)*l;
      pos[2].y = (ny+1)*l;
      pos[3].x = (nx-1)*l;
      pos[3].y = (ny)*l;
    }
    else if (orientation == 3){
      pos[1].x = (nx)*l;
      pos[1].y = (ny+1)*l;
      pos[2].x = (nx-1)*l;
      pos[2].y = (ny)*l;
      pos[3].x = (nx)*l;
      pos[3].y = (ny-1)*l;
    }
  }
  
  void Z(){
    pos[0].x = nx*l;
    pos[0].y = ny*l;
    if(orientation == 0){
      pos[1].x = (nx)*l;
      pos[1].y = (ny+1)*l;
      
      pos[2].x = (nx-1)*l;
      pos[2].y = (ny+1)*l;
      
      pos[3].x = (nx-1)*l;
      pos[3].y = (ny+2)*l;
    } 
    else if (orientation == 1){
      pos[1].x = (nx-1)*l;
      pos[1].y = (ny)*l;
      
      pos[2].x = (nx-1)*l;
      pos[2].y = (ny-1)*l;
      
      pos[3].x = (nx-2)*l;
      pos[3].y = (ny-1)*l;
    }
    else if (orientation == 2){
      pos[1].x = (nx)*l;
      pos[1].y = (ny-1)*l;
      
      pos[2].x = (nx+1)*l;
      pos[2].y = (ny-1)*l;
      
      pos[3].x = (nx+1)*l;
      pos[3].y = (ny-2)*l;
    }
    else if (orientation == 3){
      pos[1].x = (nx+1)*l;
      pos[1].y = (ny)*l;
      
      pos[2].x = (nx+1)*l;
      pos[2].y = (ny+1)*l;
      
      pos[3].x = (nx+2)*l;
      pos[3].y = (ny+1)*l;
    }
  }
  
  void S(){
    pos[0].x = nx*l;
    pos[0].y = ny*l;
    if(orientation == 0){
      pos[1].x = (nx)*l;
      pos[1].y = (ny+1)*l;
      
      pos[2].x = (nx+1)*l;
      pos[2].y = (ny+1)*l;
      
      pos[3].x = (nx+1)*l;
      pos[3].y = (ny+2)*l;
    } 
    else if (orientation == 1){
      pos[1].x = (nx-1)*l;
      pos[1].y = (ny)*l;
      
      pos[2].x = (nx-1)*l;
      pos[2].y = (ny+1)*l;
      
      pos[3].x = (nx-2)*l;
      pos[3].y = (ny+1)*l;
    }
    else if (orientation == 2){
      pos[1].x = (nx)*l;
      pos[1].y = (ny-1)*l;
      
      pos[2].x = (nx-1)*l;
      pos[2].y = (ny-1)*l;
      
      pos[3].x = (nx-1)*l;
      pos[3].y = (ny-2)*l;
    }
    else if (orientation == 3){
      pos[1].x = (nx+1)*l;
      pos[1].y = (ny)*l;
      
      pos[2].x = (nx+1)*l;
      pos[2].y = (ny-1)*l;
      
      pos[3].x = (nx+2)*l;
      pos[3].y = (ny-1)*l;
    }
  }
  
  void I(){
    pos[0].x = nx*l;
    pos[0].y = ny*l;
    if(orientation == 0){
        for(int i=0; i<4; i++){
           pos[i].x = (nx + i)*l;
           pos[i].y = ny*l;
        }
      } 
      else if (orientation == 1){
        for(int i=0; i<4; i++){
           pos[i].x = (nx)*l;
           pos[i].y = (ny + i)*l;
        }
      }
      else if (orientation == 2){
        for(int i=0; i<4; i++){
           pos[i].x = (nx-i)*l;
           pos[i].y = (ny)*l;
        }
      }
      else if (orientation == 3){
        for(int i=0; i<4; i++){
           pos[i].x = (nx)*l;
           pos[i].y = (ny - i)*l;
        }
      }
  }
  
  void O(){
    pos[0].x = (nx)*l;
    pos[0].y = (ny)*l;
    pos[1].x = (nx)*l;
    pos[1].y = (ny+1)*l;
    pos[2].x = (nx+1)*l;
    pos[2].y = (ny+1)*l;
    pos[3].x = (nx+1)*l;
    pos[3].y = (ny)*l;
  }
  
}