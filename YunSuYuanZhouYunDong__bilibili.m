%用户节点的匀速圆周运动
clear;
clc;
r=0.3;  %半径
x=-r:0.01:r;  %x坐标
y=sqrt(r^2-x.^2);  %y坐标

figure
subplot(3,2,[1:2])
plot(x,[y;-y])
grid on
axis equal
title('轨迹');
xlabel('x/m');
ylabel('y/m');

tm=4*pi;  %节点运动时间
t=0:0.1:tm;
w=2;  %角速度
x=r*sin(w*t);
y=r*cos(w*t);
hold on
comet(x,y);

vx=w*r*cos(w*t);
vy=w*r*sin(w*t);
ax=-w^2*r*sin(w*t);
ay=-w^2*r*cos(w*t);
a=sqrt(ax.^2+ay.^2);
v=sqrt(vx.^2+vy.^2);
alpha=atan2(y,x);
theta=atan2(vy,vx);
phi=atan2(ay,ax);
subplot(3,2,[3:4]);
plot(t,x,'--',t,y,'-.',t,v,t,alpha,t,theta,'-.');
grid on
title('位矢');
xlabel('rm/s');
legend('x分量','y分量','总速度','位矢方向','速度方向');

subplot(3,2,[5:6]);
plot(t,vx,'-.',t,ax,'-.',t,vy,t,ay);
legend('x方向速度','x方向加速度','y方向速度','y方向加速度');
grid on
title('分量');
xlabel('rm/s');





