#calculando apenas para valores positivos de n
f_n = [0 0 0 0 0 0 0 0 0 2 0 0]
g_n = [0 0 0 0 3 0 0 0 0 0 0 0]

subplot(311)
stem(f_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores f[n]"));
title (sprintf ("gráfico f[n]"));

subplot(312)
stem(g_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores g[n]"));
title (sprintf ("gráfico g[n]"));
x_n = conv(f_n,g_n)
subplot(313)
stem(x_n)
xlabel (sprintf ("n -> 0 à 10"));
ylabel (sprintf ("valores x[n]"));
title (sprintf ("convolução x[n]=(f*g)[n]"));