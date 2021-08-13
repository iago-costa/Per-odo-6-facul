x_n_1 = [1 -1 -0.5 0 0]
x_n_2 = [1 -0.5 -1 0 0]
n_1 = 0:1:4

subplot(321)
stem(n_1,x_n_1)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores x_1[n]"));
title (sprintf ("gráfico X_1[n]"));

subplot(322)
stem(n_1,x_n_2)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores x_2[n]"));
title (sprintf ("gráfico x_2[n]"));

fft_x_n_1 = fft(x_n_1,5)

subplot(323)
stem(n_1,fft_x_n_1)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores fft-x_1[n]"));
title (sprintf ("gráfico fft-x_1[n]"));

fft_x_n_2 = fft(x_n_2,5)

subplot(324)
stem(n_1,fft_x_n_2)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores fft-x_2[n]"));
title (sprintf ("gráfico fft-x_2[n]"));
multiplica_vetores_fft = fft_x_n_1.*fft_x_n_2
x_n = ifft(multiplica_vetores_fft,5)
n_2 = 0:1:4

subplot(313)
stem(n_2,x_n)
xlabel (sprintf ("m"));
ylabel (sprintf ("valores x[m]"));
title (sprintf ("convolução linear"));