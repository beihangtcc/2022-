tm=4*pi;  %节点运动时间
t=0:0.01:tm;
w=20;  %角速度
x=r*sin(w*t);
y=r*cos(w*t);
hold on
comet(x,y);