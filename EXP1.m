% Load the ECG signal from the .mat file
load('noisyecg/noisyecg.mat');

% Compute the power spectral density using pwelch
fs = 500; % Sampling frequency (Hz)
window = hamming(1024); % Window function
noverlap = 512; % Number of samples to overlap
nfft = 1024; % Number of FFT points
[Pxx, f] = pwelch(ecg1, window, noverlap, nfft, fs);

% Plot the power spectral density
plot(f, 10*log10(Pxx));
xlabel('Frequency (Hz)');
ylabel('Power Spectral Density (dB/Hz)');
title('Power Spectral Density of Noisy ECG Signal');
grid on;
