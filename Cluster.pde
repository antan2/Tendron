public class tendron{
  private float x, y, rot;
  private int lim, count;
  tendron(float mx, float my, float mrot, int mlim, int mcount){
    x = mx;
    y = my;
    rot = mrot;
    lim = mlim;
    count = mcount;
    
  }
  public void grow(){
    for(int i = 0; i < count; i ++)
      arm.add(new tendril(x, y, rot + i*TWO_PI/7, lim));
  }
}

