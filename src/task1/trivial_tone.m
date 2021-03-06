%% trivial_tone: Generate a tone of a certain frequency
function signal = trivial_tone(t, t_start, duration, f)
    interval = (t >= t_start & t < t_start + duration);

    signal = zeros(size(t));
    signal(interval) = sin(2 * pi * f * t(interval));
