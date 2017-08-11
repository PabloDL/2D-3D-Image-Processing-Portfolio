class Board{
  int size;
  Cell[][] cells;
    
  Board(int size){
      this.size = size;
      this.instantiateCells(this.size);
      this.setNumbers();
  }  

  void instantiateCells(int size){
      this.cells = new Cell[size][size];
    
      for (int i=0; i<size; i++){
          for (int j=0; j<size; j++){
              boolean mine = false;
              int count = 0;
              if(random(0,10) < 1.3){
                  mine = true;
                  count = -1;
              }
              cells[i][j] = new Cell(mine,new PVector(i*37+1,j*37+1),count);
          }
      }
  }
  
  void show(){
      for(int i=0; i<this.size; i++){
          for (int j=0; j<this.size; j++){
              cells[i][j].show(); 
          }
      }      
  }

  boolean isInsideGrid (int i, int j, int size){
      boolean result = true;
      if(i<0 || i>size-1 || j<0 || j>size-1 ){
          result = false;
      }
      return result;
  }

  void setNumbers(){
     for (int i=0; i<size; i++){
          for (int j=0; j<size; j++){
              if(this.cells[i][j].mine){
                
                  for (int k=i-1; k<=i+1; k++){
                      for (int l=j-1; l<=j+1; l++){           
                          if (!isInsideGrid(k,l,size) || cells[k][l].mine){
                              continue;
                          }
                          else {
                              this.cells[k][l].count+=1;
                          }
                      }  
                  }
              }
          }
      }
  }
}