import java.util.*; //library used for arrayLists
void setup(){ // setting default background and window sizing
  size(400, 400);
  background(255);
}
void draw(){ //not sure why this is still needed but its there
}
void mouseWheel(MouseEvent event){ //calls lightning whenever the mousewheel is spun, 
  lightning((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  fill(255, 255, 255, 40);//and slowly fades the lightning by creating clear bakgrounds
  rect(-1, -1, 401, 401);// that slowly cover the lightning
}
void mouseClicked(){ //resets the background on click
  background(255);
}
void lightning(int r, int g, int b){ //defining the lightning function
//(honestly way more complicated than it needs to be)
  //generate Y coordinates
  ArrayList<Integer> numbersY=new ArrayList<Integer>();
  int ascendingSeed=0;
  for(int i=0; i<20; i++){
    numbersY.add((int)(Math.random()*ascendingSeed));
    ascendingSeed+=40;
  }
  //Generate X coordinates
  ArrayList<Integer> numbersX=new ArrayList<Integer>();
  int xCoord=(int)(Math.random()*400);
  for(int i=0; i<20; i++){
    numbersX.add((int)(xCoord+Math.random()*30));
    ascendingSeed+=40;
  }
  //Using X and Y coordinates to draw
  Collections.sort(numbersY);
  for(int i=0; i<19; i++){
    stroke(r, g, b);
    line(numbersX.get(i), numbersY.get(i), numbersX.get(i+1), numbersY.get(i+1));
  }
  //test/debug section
  int formatStuff=0;
  for (Integer i : numbersY ){
    System.out.println(i + "  "+ numbersX.get(formatStuff));
    formatStuff+=1;
  }
}
