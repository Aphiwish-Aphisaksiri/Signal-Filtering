% Load the ECG signal from the .mat file
load('noisyecg/noisyecg.mat');

% Compute the power spectral density using pwelch
fs = 500; % Sampling frequency (Hz)
window = hamming(1024); % Window function
noverlap = 512; % Number of samples to overlap
nfft = 1024; % Number of FFT points
[Pxx_original, f] = pwelch(ecg1, window, noverlap, nfft, fs);

b = [1,	2, 2, 2,2,1.99999999999999,2,2,2,2,1];

% Normalize the filter coefficients
b = b / sum(b);

% Filter the signal with b
filtered_signal = filter(b, 1, ecg1);

% Compute the power spectral density of the filtered signal
[Pxx_filtered, f_filtered] = pwelch(filtered_signal, window, noverlap, nfft, fs);

% Plot the power spectral density of both signals
hold on;
plot(f, 10*log10(Pxx_original), 'b', 'LineWidth', 1.5);
plot(f_filtered, 10*log10(Pxx_filtered), 'r', 'LineWidth', 1.5);
hold off;

xlabel('Frequency (Hz)');
ylabel('Power Spectral Density (dB/Hz)');
title('Comparison of Power Spectral Density');
legend('Original Signal', 'Filtered Signal');
grid on;

% Plot the time domain comparison of the original and filtered signal
figure;

% Plot the original signal
subplot(2, 1, 1);
t = (0:length(ecg1)-1) / fs; % Time vector
plot(t, ecg1, 'b', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal');
grid on;

% Plot the filtered signal
subplot(2, 1, 2);
plot(t, filtered_signal, 'r', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Signal');
grid on;
