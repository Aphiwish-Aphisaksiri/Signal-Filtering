% Filter parameters
fs = 500; % Sampling rate in Hz
f_cutoff = 1; % Cutoff frequency in Hz

% Normalize frequencies
f_norm = f_cutoff / (fs / 2);

% Create the highpass filter using remez
h = remez(600, [0 f_norm f_norm+0.01 1], [0 0 1 1]);

% Compute frequency response
[H, w] = freqz(h, 1, 1024);
H_normalized = abs(H) / max(abs(H));

% Plot frequency response
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
