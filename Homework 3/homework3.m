%% Homework 3 ECE210 Mark Koszykowski

clc
clear
close all
%% 1

A = ones(100);
B = ones(100);
C = ones(100);

x = 1:100;

[X,Y] = meshgrid(x,x);

A = logical(sqrt((Y-25).^2+(X-75).^2)>10 & sqrt((Y-75).^2+(X-25).^2)>10);
B = logical(sqrt((Y-25).^2+(X-25).^2)>10 & sqrt((Y-75).^2+(X-75).^2)>10);
C = logical(sqrt((Y-50).^2+(X-50).^2)<10);

figure;
imshow(~C);

figure;
imshow(A);

figure;
imshow(A&~C);

figure;
imshow(A&B);

figure;
imshow(A&B&~C);

%% 2

x2 = linspace(0,5,100);
y2 = sin(x2)+1;
[val, index] = findClosest(y2, 3/2);

%% 3

x3 = linspace(-3,3,10000);
y3 = x3.^5 - 8*x3.^3 + 10*x3 + 6;

main(x3, y3);