% % Homework 6 ECE210 Mark Koszykowski

clc
clear
close all
%% 1

b1 = [0 2/5 1/4 1/7];
a1 = [1/3 0 -1/8 3/2];

[z1, p1, k1] = tf2zpk(b1, a1);

fvtool(b1, a1, 'Analysis', 'polezero');

[h1, n1] = impz(b1, a1, 50);

figure;
stem(n1, h1);
title("Impulse Response");
xlabel("n");
ylabel("h[n]");

x1 = (-4/5).^n1;

len1 = length(n1)-1;

figure;
subplot(2,1,1);
stem(n1, x1);
title("Input Signal");
xlabel("n");
ylabel("x[n]");

y1 = filter(b1, a1, x1);

subplot(2,1,2);
stem(n1, y1);
xlim([0 len1]);
title("Output Signal using 'filter'");
xlabel("n");
ylabel("y[n]");

y1 = conv(x1, h1);

figure;
subplot(2,1,1);
stem(n1, x1);
title("Input Signal");
xlabel("n");
ylabel("x[n]");

n1 = 0:(length(y1)-1);

subplot(2,1,2);
stem(n1, y1);
xlim([0 len1]);
title("Output Signal using 'conv'");
xlabel("n");
ylabel("y[n]");

%% 2

k2 = 0.01;
z2 = [-1; 1];
p2 = [.9*exp(1j*(pi/2)); .9*exp(-1j*(pi/2)); .95*exp(1j*(5*pi/12)); .95*exp(-1j*(5*pi/12)); .95*exp(1j*(7*pi/12)); .95*exp(-1j*(7*pi/12))];

figure;
zplane(z2, p2);

[b2, a2] = zp2tf(z2, p2, k2);

[h2, w2] = freqz(b2, a2, 1024);

h2db = 20*log10(abs(h2));
h2phi = rad2deg(unwrap(angle(h2)));

figure;
subplot(2,1,1);
plot(w2, h2db);
title("Magnitude Reponse");
ylabel("|H(\omega)| (dB)");
xlabel("\omega (rad)");
xlim([0 pi]);
xticks(0:pi/12:pi);
xticklabels({'0', '\pi/12', '\pi/6', '\pi/4', '\pi/3', '5\pi/12', '\pi/2', '7\pi/12', '2\pi/3', '3\pi/4', '5\pi/6', '11\pi/12', '\pi'});

subplot(2,1,2);
plot(w2, h2phi);
title("Phase Response");
ylabel("\phi(\omega) (deg)")
xlabel("\omega (rad)");
xlim([0 pi]);
xticks(0:pi/12:pi);
xticklabels({'0', '\pi/12', '\pi/6', '\pi/4', '\pi/3', '5\pi/12', '\pi/2', '7\pi/12', '2\pi/3', '3\pi/4', '5\pi/6', '11\pi/12', '\pi'});