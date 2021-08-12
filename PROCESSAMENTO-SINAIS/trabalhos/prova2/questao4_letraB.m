
fft = [0 -1 0 1 0 0]
n_1 = 1:1:6

subplot(311)
stem(n_1,fft)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores fft[m]"));
title (sprintf ("gráfico fft[m]"));

ifft_x_n = ifft(fft,6)

subplot(312)
stem(n_1,ifft_x_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores ifft-m"));
title (sprintf ("gráfico ifft-m"));