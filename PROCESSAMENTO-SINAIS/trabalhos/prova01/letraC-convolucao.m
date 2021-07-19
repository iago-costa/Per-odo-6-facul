#calculando apenas para valores positivos de n
n_1 = -2:1:2
f_n = [-1 -1 -1 0 0]
g_n = [1 1 1 0 0 ]

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
n_2 = -4:1:4
subplot(313)
stem(n_2,x_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores x[n]"));
title (sprintf ("convolução x[n]=(f*g)[n]"));