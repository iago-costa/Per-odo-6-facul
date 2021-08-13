
fft = [0 -1 0 1]
n_1 = 0:1:3

subplot(311)
stem(n_1,fft)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores fft[m]"));
title (sprintf ("gráfico fft[m]"));

ifft_x_n = ifft(fft,4)

subplot(312)
stem(n_1,ifft_x_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores ifft-m"));
title (sprintf ("gráfico ifft-m"));