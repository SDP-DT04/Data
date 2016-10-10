[a, t] = accel_data(); 
[X, k] = dft(a);
[A, tf] = myFilter(a, t); 
[XF, n] = dft(A'); 

figure(1);
subplot(4,1,1);
plot_hi_res(k, abs(X), '-', '|X(w)|');
subplot(4,1,2);
plot_hi_res(n, abs(XF), '-', '|X(w)| Filtered');
subplot(4,1,3);
plot_hi_res(t, a, '-', 'Acceleration'); 
subplot(4,1,4);
plot_hi_res(tf, A, '-', 'Acceleration Filtered');
print_hi_res('accel_filtered_analysis'); 
