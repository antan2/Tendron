public class tendril{
  private float x, y, rot;
  private int lim;
  tendril(float mx, float my, float mrot, int mlim){
    x=mx;
    y=my;
    rot=mrot;
    lim=mlim;
  }
  public void show(){
    float tempX = x;
    float tempY = y;
    stroke(255, 255, 255);
    strokeWeight(lim/10+1);
    for(int i = 0; i < lim; i++){
      line(tempX, tempY, (float)(tempX+5*cos(rot)), (float)(tempY+5*sin(rot)));
      tempX = (float)(tempX+5*cos(rot));
      tempY = (float)(tempY+5*sin(rot));
      rot += (float)(Math.random()*0.5-0.25);
    }
    if(lim > 3){
      cluster.add(new tendron(tempX, tempY, rot, lim/3, 7));
      cluster.get(cluster.size()-1).grow();
    }
  }
}
