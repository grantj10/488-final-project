function Hd = BandPassNUm2
%BANDPASSNUM2 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.2 and the Signal Processing Toolbox 7.4.
% Generated on: 29-Apr-2018 20:43:48

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
Fs = 41667;  % Sampling Frequency

Fstop1 = 16000;           % First Stopband Frequency
Fpass1 = 17000;         % First Passband Frequency
Fpass2 = 20000;        % Second Passband Frequency
Fstop2 = 21000;        % Second Stopband Frequency
Astop1 = 60;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 80;          % Second Stopband Attenuation (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]