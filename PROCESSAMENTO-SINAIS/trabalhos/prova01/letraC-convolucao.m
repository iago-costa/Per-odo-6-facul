
f_n = [0 0 0 0 0 0 0 0 0 2]
g_n = [0 0 0 0 3 0 0 0 0 0]

subplot(311)
xlabel("f(n)")
stem(f_n)

subplot(312)
stem(g_n)

x_n = conv(f_n,g_n)
subplot(313)
stem(x_n)
