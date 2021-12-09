%% Homework 7 ECE210 Mark Koszykowski

clc;
clear;
close all;
%% 1 

t = 0:.001:2;

signal = zeros(1,2001);

for i = 1:50000
    signal = signal + sin(2*pi*i*t);
end

%% 2
applyfilt(signal, ButtLowPass, "Butterworth Lowpass Filter");

%% 3
applyfilt(signal, ChebIHighPass, "Chebychev I Highpass Filter");

%% 4
applyfilt(signal, ChebIIBandStop, "Chebychev II Bandstop Filter");

%% 5
applyfilt(signal, EllipticBandPass, "Elliptic Bandpass Filter");