import java.util.*; //library used for arrayLists
void setup(){ // setting default background and window sizing
  size(400, 400);
  background(255);
}
void draw(){ //not sure why this is still needed but its there
}
void mouseClicked(){ //resets the background on click
  lightning((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  fill(255, 255, 255, 40);//and slowly fades the lightning by creating clear bakgrounds
  rect(-1, -1, 401, 401);// that slowly cover the lightning
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
  ArrayList <Integer> numbersX=new ArrayList<Integer>();
  int xCoord=(int)(Math.random()*400);
  for(int i=0; i<20; i++){
    numbersX.add((int)(xCoord+Math.random()*30));
    ascendingSeed+=40;
  }
  //Sorting Y
  ArrayList<Integer> sorted=new ArrayList<Integer>();
  while(sorted.size()<20){
    int minimum=numbersY.get(0);
    for(int i=0; i<numbersY.size(); i++){
     if(numbersY.get(i)<minimum){
       minimum=numbersY.get(i);
    }
  }
  sorted.add(minimum);
  numbersY.remove(Integer.valueOf(minimum));
}
  for(int i=0; i<19; i++){
    stroke(r, g, b);
    line(numbersX.get(i), sorted.get(i), numbersX.get(i+1), sorted.get(i+1));
  }
}
