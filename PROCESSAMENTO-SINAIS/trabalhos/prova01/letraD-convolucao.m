#calculando apenas para valores positivos de n
n_1 = 0:1:4
f_n = [4 4 4 0 0]
g_n = [1 2 1 0 0 ]

subplot(311)
stem(n_1,f_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores f[n]"));
title (sprintf ("gráfico f[n]"));

subplot(312)
stem(n_1,g_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores g[n]"));
title (sprintf ("gráfico g[n]"));
x_n = conv(f_n,g_n)
n_2 = 0:1:8
subplot(313)
stem(n_2,x_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores x[n]"));
title (sprintf ("convolução x[n]=(f*g)[n]"));