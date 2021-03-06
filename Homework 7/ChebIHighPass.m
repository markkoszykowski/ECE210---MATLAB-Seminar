function Hd = ChebIHighPass
%CHEBIHIGHPASS Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 11-Apr-2020 18:05:46

% Chebyshev Type I Highpass filter designed using FDESIGN.HIGHPASS.

% All frequency values are in Hz.
Fs = 100000;  % Sampling Frequency

Fstop = 15000;       % Stopband Frequency
Fpass = 35000;       % Passband Frequency
Astop = 40;          % Stopband Attenuation (dB)
Apass = 2;           % Passband Ripple (dB)
match = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.highpass(Fstop, Fpass, Astop, Apass, Fs);
Hd = design(h, 'cheby1', 'MatchExactly', match);

% Get the transfer function values.
[b, a] = tf(Hd);

% Convert to a singleton filter.
Hd = dfilt.df2(b, a);



% [EOF]
