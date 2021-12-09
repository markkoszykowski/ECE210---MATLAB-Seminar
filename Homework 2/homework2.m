%%Homework 2 ECE210 Mark Koszykowski 

clc
clear
close all
%% 1

x1 = linspace(0, 2*pi, 100);
x2 = linspace(0, 2*pi, 1000);

y1 = sin(2*x1);
y2 = sin(2*x2);

dydx1 = diff(y1)./diff(x1);
dydx2 = diff(y2)./diff(x2);

%dydx1 and dydx2 should look like 2*cos(2*x)

tdydx1 = 2*cos(2*x1(1:end-1));
tdydx2 = 2*cos(2*x2(1:end-1));

diff1 = tdydx1-dydx1;
diff2 = tdydx2-dydx2;

min1 = min(diff1);
min2 = min(diff2);
max1 = max(diff1);
max2 = max(diff2);

%the vector with more elements produced smaller differences

Y1 = cumsum(y1*(2*pi/100));
Y2 = cumtrapz(x2, y2);

Y1 = Y1 - .5;
Y2 = Y2 - .5;

tY1 = (-1/2)*cos(2*x1);
tY2 = (-1/2)*cos(2*x2);

idiff1 = tY1 - Y1;
idiff2 = tY2 - Y2;

imin1 = min(idiff1);
imin2 = min(idiff2);
imax1 = max(idiff1);
imax2 = max(idiff2);

figure;
plot(x2, Y2)
title('Integral of sin(2x)');

%% 2

a = 1:100;
A = reshape(a, 10, 10);

A = flipud(A);

A(3,:) = fliplr(A(3,:));

b = [sum(A(:,1)) sum(A(:,2)) sum(A(:,3)) sum(A(:,4)) sum(A(:,5)) sum(A(:,6)) sum(A(:,7)) sum(A(:,8)) sum(A(:,9)) sum(A(:,10))];

c = [prod(A(1,:));prod(A(2,:));prod(A(3,:));prod(A(4,:));prod(A(5,:));prod(A(6,:));prod(A(7,:));prod(A(8,:));prod(A(9,:));prod(A(10,:))];

A(6,:) = [];

%% 3

m = 300;
n = 500;

tic
for i = 1:m
    for j = 1:n
        B(i,j) = (i^3 + j^3)/(i+j+2);
    end
end
toc

C = zeros(300, 500);

tic
for i = 1:m
    for j = 1:n
        C(i,j) = (i^3 + j^3)/(i+j+2);
    end
end
toc

x3 = 1:500;
y3 = 1:300;

[X3, Y3] = meshgrid(x3, y3);

tic
S = (X3.^3 + Y3.^3)./(X3+Y3+2);
toc