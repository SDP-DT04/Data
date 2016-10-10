subplot(2,1,1);
[h, n] = impulse_response();
stem(n, h);

[H, k] = dft(h');
subplot(2,1,2);
plot_hi_res(k, abs(H), '-', '|H(w)|'); 
print_hi_res('filter_analysis');
