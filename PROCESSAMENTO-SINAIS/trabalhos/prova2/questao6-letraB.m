
x_n = [0 1 2 3]
n_1 = 0:1:3

subplot(411)
stem(n_1,x_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores x[n]"));
title (sprintf ("gráfico x[n]"));

fft_x_n = fft(x_n,4)

subplot(412)
stem(n_1,fft_x_n)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores fft-x[n]"));
title (sprintf ("gráfico fft-x[n]"));

magnitude_fft = abs(fft_x_n)

subplot(413)
stem(n_1,magnitude_fft)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores magnitudes"));
title (sprintf ("magnitude fft-x[n]"));

fase_fft = atand(imag(fft_x_n)./real(fft_x_n))

subplot(414)
stem(n_1,fase_fft)
xlabel (sprintf ("m"));
ylabel (sprintf ("graus"));
title (sprintf ("fase fft-x[n]"));
