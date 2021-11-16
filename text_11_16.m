clear;
clc;

%% ����һͼ���߶�����
t = 0:0.3:2*pi;
y1 = sin(t);
y2 = cos(t);
y3 = 2*y2;
y4 = 2*y1;
y5 = y1.*y2;
figure(1);
plot(t,y1,'bv:',t,y2,'r*-',t,y3,'g+--',t,y4,'b^-.',t,y5,'yd-');

%% ������ά����ͼ����ά����ͼ
x = -5:0.1:5;       %���÷�Χ
y = -5:0.1:5;       
figure(2);
[x,y] = meshgrid(x,y);  %�γ��������ݵ�

z = exp(-0.5*(x.^2+y.^2));  %��Ԫ����

subplot(2,1,1);
mesh(x,y,z);    %��ά����ͼ
subplot(2,1,2);
surf(x,y,z);    %��ά����ͼ

%% �ϲ�����
mat1 = [1,2,3];
mat2 = [4,5,6];
mat_1 = [mat1 mat2] %�ո�����ϲ�
mat_b = [mat1,mat2] %���Ÿ����ϲ�
mat_c = [mat1;mat2] %�ֺŸ����ϲ�

