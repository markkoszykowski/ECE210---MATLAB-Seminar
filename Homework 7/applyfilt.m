function applyfilt(signal, customfilt, string)
Hd = customfilt;

Fs = 100000;

[H, f] = freqz(Hd, 1024, Fs);

Hdb = 20*log10(abs(H));
Hphi = rad2deg(unwrap(angle(H)));

figure;
subplot(2,1,1);
plot(f,Hdb);
title("Magnitude Response of " + string);
ylabel("|H(f)| (dB)");
xlabel("f (kHz)");
xlim([0 50000]);
xticks(0:10000:50000);
xticklabels({'0', '10', '20', '30', '40', '50'});

subplot(2,1,2);
plot(f, Hphi);
title("Phase Response of " + string);
ylabel("\phi(f) (deg)")
xlabel("f (kHz)");
xlim([0 50000]);
xticks(0:10000:50000);
xticklabels({'0', '10', '20', '30', '40', '50'});

y = filter(Hd, signal);

N = 2^20;
y = fft(y, N);
y = fftshift(abs(y))/N;

F = Fs*(-N/2:N/2-1)/N;

figure;
plot(F, y);
title("FFT of output signal with " + string);
ylabel("|Y(f)|");
xlabel("f (kHz)");
xlim([0 50000]);
xticks(0:10000:50000);
xticklabels({'0', '10', '20', '30', '40', '50'});
end

