% Filter parameters
fs = 500; 
f_cutoff_notch = 50; 
f_cutoff_low = 50;
f_cutoff_high = 1;
num_harmonics = 4; % Number of harmonics to consider

%Comb
h_band = 1;
for harmonic = 1:num_harmonics
    f = f_cutoff_notch * harmonic;
    h_band = conv(h_band, [1, -2*cos(2*pi*f/fs), 1]);
end

%LPF
f_norm_low = f_cutoff_low / (fs / 2);
h_low = remez(500, [0 f_norm_low f_norm_low+0.01 1], [1 1 0 0]);
h_low = conv(h_band, h_low );

%HPF
f_norm_high = f_cutoff_high / (fs/2);
h_high = remez(600, [0 f_norm_high f_norm_high+0.01 1], [0 0 1 1]);
h = conv(h_low, h_high);

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
