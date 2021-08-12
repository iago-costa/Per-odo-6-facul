
x_n = [1 2 -1 1]
n_1 = 1:1:4

subplot(311)
stem(n_1,x_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores x[n]"));
title (sprintf ("gráfico x[n]"));

fft_x_n = fft(x_n,4)

subplot(312)
stem(n_1,fft_x_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores fft-x[n]"));
title (sprintf ("gráfico fft-x[n]"));

