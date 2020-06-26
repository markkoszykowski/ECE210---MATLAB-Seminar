%%Homework 1 ECE210 Mark Koszykowski

clc
clear
close all
%% 1

a1 = log10(26);
b1 = 5*exp(j*(2*pi/3));
c1 = atan(sqrt(15))+34;
d1 = (sqrt(3)/2)+j*(1/2);

x1 = [a1; b1; c1; d1];

%% 2

a2 = b1 * d1;

b2 = real(a2);
c2 = imag(a2);
d2 = abs(a2);
e2 = angle(a2);

x2 = [b2 c2 d2 e2];

%% 3

x3 = x1 * x2;

x1T = x1.';
y3 = x1T.*x2;
z3 = repmat(y3,4,1);

%% 4

a4 = x3+(2*z3);
b4 = x3.*z3;
c4 = x3-2;
d4 = x3';

%% 5

n = rad2deg(e2);

a5 = linspace(1, n, 2000);
b5 = 1:.3:n;