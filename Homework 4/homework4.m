%% Homework 4 ECE210 Mark Koszykowski

clc
clear
close all
%%

array1 = rand(10, 9);
array2 = gramSchmidt(array1);
isOrthonormal(array2)

array3 = rand(10, 10);
array4 = gramSchmidt(array3);
isOrthonormal(array4)


vec = rand(10,1);
est1 = orthoProj(array2,vec);
est2 = orthoProj(array4,vec);

error1 = max(abs(vec-est1));
error2 = max(abs(vec-est2));

%%

x = linspace(0,2*pi,10000);
y = sin(x);

g1 = (1/((2*pi)^(1/2)))*exp(-(x-0).^2);
g2 = (1/((2*pi)^(1/2)))*exp(-(x-(pi/2)).^2);
g3 = (1/((2*pi)^(1/2)))*exp(-(x-pi).^2);
g4 = (1/((2*pi)^(1/2)))*exp(-(x-(3*pi/2)).^2);
g5 = (1/((2*pi)^(1/2)))*exp(-(x-(2*pi)).^2);

figure;
plot(x,y,x,g1,x,g2,x,g3,x,g4,x,g5);
title("Sinusoid and Gaussians");
xlabel("x");
ylabel("y");
legend('sin(x)','\mu = 0','\mu = \pi/2','\mu = \pi','\mu = 3\pi/2','\mu = 2\pi');
xticks(0:pi/2:2*pi)
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi', '5\pi/2','3\pi'})

G(:,1) = g1;
G(:,2) = g2;
G(:,3) = g3;
G(:,4) = g4;
G(:,5) = g5;

GS = gramSchmidt(G);
est3 = orthoProj(GS, y);

figure;

subplot(2,1,1);
plot(x,y,x,est3);
title("Sinusoid and Estimate");
xlabel("x");
ylabel("y");
legend('sin(x)','Estimation');
xticks(0:pi/2:2*pi);
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi', '5\pi/2','3\pi'});

subplot(2,1,2);
plot(x, GS);
title("Orthonormal Basis Functions");
xlabel("x");
ylabel("y");
legend('\phi1','\phi2','\phi3','\phi4','\phi5');
xticks(0:pi/2:2*pi);
xticklabels({'0','\pi/2','\pi','3\pi/2','2\pi', '5\pi/2','3\pi'});