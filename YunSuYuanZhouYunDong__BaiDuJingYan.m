clear
clc
r=0.4;  %半径
x=-r:0.01:r;  %x坐标
y=sqrt(r^2-x.^2);  %y坐标
figure
plot(x,[y;-y],'LineWidth',2);
grid on
axis equal;
title('节点轨迹','FontSize',16);  %标题
xlabel('x/m');  %横坐标标签
ylabel('y/m');  %纵坐标标签
text(0,0,'按enter显示方向','FontSize',10);
pause  %暂停
tm=6;  %节点的运动时间
t=0:0.001:tm;  %时间向量
w=2;  %系数
x=r*sin(w*t);  %x坐标
y=r*cos(w*t);  %y坐标
hold on  %保持图像
comet(x,y);  %画彗星式轨道

%%%%%%%%%%%%%%%%%%%%%%%画位移矢量图像
figure
subplot(2,1,1);
plot(t,x,'--',t,y,'-.',t,sqrt(x.^2+y.^2),'LineWidth',2);  %画曲线
grid on
title('位移矢量','FontSize',16);
xlabel('m/s','FontSize',16);
legend('水平坐标','竖直坐标','位矢大小','northwest');
alpha=atan2(y,x)*180/pi;
subplot(2,1,2);
plot(t,alpha,'LineWidth',2);
grid on;
title('位移矢量方向','FontSize',16);
xlabel('m/s','FontSize',16);  %横坐标标签
ylabel('m/s','FontSize',16);  %纵坐标标签

%%%%%%%%%%%%%%%%%%%%%%%画速度曲线
vx=w*r*cos(w*t);  %x方向分速度
vy=-w*r*sin(w*t);  %y方向分速度
figure
subplot(2,2,1);
plot(t,vx,'LineWidth',2);  %画x速度曲线
grid on
title('速度的x分量','FontSize',16);
subplot(2,2,2);
plot(t,vy,'LineWidth',2);  %画y速度曲线
grid on
title('速度的y分量','FontSize',16);

%%%%%%%%%%%%%%%%%%%%%%%画加速度曲线
ax=-w^2*r*sin(w*t);  %x分加速度
ay=-w^2*r*cos(w*t);  %y分加速度
a=sqrt(vx.^2+vy.^2);  %合加速度
figure
subplot(2,2,1);
plot(t,ax);  %画x加速度曲线
grid on
title('加速度的x分量','FontSize',16);
subplot(2,2,2);
plot(t,ay);  %画x加速度曲线
grid on
title('加速度的y分量','FontSize',16);






