
f_n = [0 0 0 0 0 0 0 0 0 2 0 0]
g_n = [0 0 0 0 3 0 0 0 0 0 0 0]
n_1 = 1:1:12

subplot(311)
stem(n_1,f_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores f[n]"));
title (sprintf ("gráfico f[n]"));

subplot(312)
stem(n_1,g_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores g[n]"));
title (sprintf ("gráfico g[n]"));

x_n = conv(f_n,g_n)
n_2 = 2:1:24

subplot(313)
stem(n_2,x_n)
xlabel (sprintf ("n"));
ylabel (sprintf ("valores x[n]"));
title (sprintf ("convolução x[n]=(f*g)[n]"));
