% Filter parameters
fs = 500; % Sampling rate in Hz
f0 = 50; % Cut-off frequency in Hz
num_harmonics = 5; % Number of harmonics to consider

% Create notches at the fundamental frequency and its harmonics
h = 1;
for harmonic = 1:num_harmonics
    f = f0 * harmonic;
    h = conv(h, [1, -2*cos(2*pi*f/fs), 1]);
end

[H, w] = freqz(h, 1, 1024); %Frequency response
H_normalized = abs(H) / max(abs(H)); %Normalize

% Plot the frequency response
subplot(2, 1, 1);
plot(w * (fs / (2 * pi)), H_normalized);
title('Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Amplitude');

% Plot the impulse response
subplot(2, 1, 2);
n = 0:length(h)-1;
stem(n, h);
title('Impulse Response');
xlabel('Time');
ylabel('Amplitude');
