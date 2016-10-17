subplot(2,1,1);
[h, n] = impulse_response();
stem_hi_res(n, h, 'Filter Impulse Response');
xlabel('n'); 
ylabel('h[n]');

h = [zeros(1,1000), h];
[H, k] = dft(h');
subplot(2,1,2);
plot_hi_res(k, abs(H), '.', 'Filter Frequency Response');
xlabel('\Omega (rad/sample)'); 
ylabel('|H(\Omega)|')
print_hi_res('filter_analysis');
