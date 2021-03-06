%% harmonic_tone: generate a harmonic refined tone of a certain frequency
function signal = harmonic_tone(t, t_start, duration, f)
    interval = (t >= t_start);

    wave = [1, 0.2, 0.3] * sin(2 * pi * f * [1:3]' * t);
    signal = tone_shape(t - t_start, duration) .* wave;
