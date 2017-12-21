class Cell{
  boolean mine;
  boolean covered;
  PVector pos;
  int count;
  int tone;
  
  Cell(boolean mine, PVector pos, int count){
    this.mine = mine;
    this.covered = true;
    this.pos = pos;
    this.count = count;
    this.tone = 120;
  }
  
  void show(){
    if(this.cursorOnCell() && this.covered == true){
       fill(170);
       if (mousePressed){
           this.covered = false;
           System.out.println(this.count);
           if (this.mine){
               this.tone = 0;
           }
           else{
               this.tone = 200;
           }
       }
    }
    else{
      fill(tone);
    }
    
    rect(this.pos.x, this.pos.y, 37, 37);
    if (!this.covered){
        paint(this.count); 
        
    }
  }
  
  
  boolean cursorOnCell(){
    boolean result = false;
    if(mouseX-37 < this.pos.x && mouseX >= this.pos.x && mouseY-37 < this.pos.y && mouseY >= this.pos.y ){
        result = true;
    }
    return result;
  }
  
  void paint(int number){
      switch (number){
      case 1:
        n1();
        break;
      case 2:
        n2();
        break;
      case 3:
        n3(); 
        break;
      case 4:
        n4();
        break;
      case 5:
        n5();
        break;
      case 6: 
        n6();
        break();
      case 7:
        n7();
        break;
      case 8:
        n8();
        break;      
      }
  }
  
  void n1(){
    fill(0);
    rect(this.pos.x + 37/2 -4,this.pos.y + 37/2 -4,8,8);
  }
  void n2(){
    fill(0);
    rect(pos.x + 26 -4,pos.y + 11 -4,8,8);
    rect(pos.x + 10 -4,pos.y + 27 -4,8,8);
  }
  void n3(){
    fill(0);
    rect(pos.x + 37/2 -4,pos.y + 11 -4,8,8);
    rect(pos.x + 10 -4,pos.y + 24 -4,8,8);
    rect(pos.x + 26 -4,pos.y + 24 -4,8,8);
  }
  void n4(){
    fill(0);
    rect(pos.x + 27 -4,pos.y + 10 -4,8,8);
    rect(pos.x + 27 -4,pos.y + 27 -4,8,8);
    rect(pos.x + 10 -4,pos.y + 10 -4,8,8);
    rect(pos.x + 10 -4,pos.y + 27 -4,8,8);
  }
  void n5(){
    fill(0);
    rect(pos.x + 29 -4,pos.y + 8 -4,8,8);
    rect(pos.x + 29 -4,pos.y + 29 -4,8,8);
    rect(pos.x + 19 -4,pos.y + 19 -4,7,7);
    rect(pos.x + 8 -4,pos.y + 8 -4,8,8);
    rect(pos.x + 8 -4,pos.y + 29 -4,8,8);
  }
  void n6(){
    
    fill(0);
    rect(pos.x + 25 -4,pos.y + 8 -4,6,6);
    rect(pos.x + 25 -4,pos.y + 29 -4,6,6);
    rect(pos.x + 8 -4,pos.y + 18 -4,6,6);
    rect(pos.x + 31 -4,pos.y + 18 -4,6,6);
    rect(pos.x + 13 -4,pos.y + 8 -4,6,6);
    rect(pos.x + 13 -4,pos.y + 29 -4,6,6);
  }
  void n7(){
    fill(0);
    rect(pos.x + 25 -4,pos.y + 9 -4,6,6);
    rect(pos.x + 25 -4,pos.y + 29 -4,6,6);
    rect(pos.x + 8 -4,pos.y + 19 -4,6,6);
        rect(pos.x + 19 -4,pos.y + 18 -4,6,6);
    rect(pos.x + 31 -4,pos.y + 19 -4,6,6);
    rect(pos.x + 13 -4,pos.y + 9 -4,6,6);
    rect(pos.x + 13 -4,pos.y + 29 -4,6,6);
     
  }
  void n8(){
    fill(0);
    rect(pos.x + 24 -4,pos.y + 9 -4,5,5);
    rect(pos.x + 15 -4,pos.y + 9 -4,5,5);
    rect(pos.x + 8 -4,pos.y + 24 -4,5,5);
    rect(pos.x + 8 -4,pos.y + 15 -4,5,5);
    rect(pos.x + 31 -4,pos.y + 24 -4,5,5);
    rect(pos.x + 31 -4,pos.y + 15 -4,5,5);
    rect(pos.x + 24 -4,pos.y + 29 -4,5,5);
    rect(pos.x + 15 -4,pos.y + 29 -4,5,5);
  }
  
  void n0(){
  }
}
  
