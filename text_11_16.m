clear;
clc;

%% 绘制一图多线多线型
t = 0:0.3:2*pi;
y1 = sin(t);
y2 = cos(t);
y3 = 2*y2;
y4 = 2*y1;
y5 = y1.*y2;
figure(1);
plot(t,y1,'bv:',t,y2,'r*-',t,y3,'g+--',t,y4,'b^-.',t,y5,'yd-');

%% 绘制三维网格图和三维曲线图
x = -5:0.1:5;       %设置范围
y = -5:0.1:5;       
figure(2);
[x,y] = meshgrid(x,y);  %形成网格数据点

z = exp(-0.5*(x.^2+y.^2));  %二元方程

subplot(2,1,1);
mesh(x,y,z);    %三维网格图
subplot(2,1,2);
surf(x,y,z);    %三维曲面图

%% 合并矩阵
mat1 = [1,2,3];
mat2 = [4,5,6];
mat_1 = [mat1 mat2] %空格隔开合并
mat_b = [mat1,mat2] %逗号隔开合并
mat_c = [mat1;mat2] %分号隔开合并

