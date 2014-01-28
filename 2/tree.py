def d(n,x,l,t):
    y=x[0]+l*math.sin(t),x[1]+l*math.cos(t);
    draw.aaline(c,(a[u]+a[u+1]*n,a[u+2]+a[u+3]*n,a[u+4]),x,y);
    r=random.random;
    (display.flip(),event.poll());
    n and[d(n-1,y,l*(.7+r()/5),t+i*r())for i in(-1,1)];

from pygame import *;
import math,random,time;
c=display.set_mode((800,600));
u=time.localtime()[1]%12/3*5;
s='winter','spring','summer','autumn';
a=(30,2.5,30,1,30,20,1.5,30,-.5,10,10,2,30,-.5,10,30,1,30,-.5,10);
p=math.pi
while 1:
      c.fill((0,0,16));
      display.set_caption("tree: "+s[u/5]);
      draw.rect(c,(32,)*3,(0,550,800,50));
      d(17,(400,550),100,p);
      u=(u+5)%20;
      time.sleep(3)
