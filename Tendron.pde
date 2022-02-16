public int t = 0;
public int t2 = 0;
public int inc = 1;
public ArrayList <tendron> cluster = new ArrayList <tendron>();
public ArrayList <tendril> arm = new ArrayList <tendril>();
public void setup(){
  size(1000, 1000);
}
public void draw(){
  if(t2%10 == 0){
    background(0, 0, 0);
    cluster.add(new tendron(500, 500, 0-HALF_PI, t+1, 7));
    for(int i = 0; i < cluster.size(); i++){
      cluster.get(i).grow();
    }
    for(int i = 0; i < arm.size(); i++){
      arm.get(i).show();
    }
  t+= inc;
  if(t >= 75 || t <= 0)
    inc *= -1;
  }
  t2++;
  for(int i = cluster.size()-1; i >= 0; i--){
      cluster.remove(i);
   }
   for(int i = arm.size()-1; i >= 0; i--){
      arm.remove(i);
   }
}

