[a, t] = accel_data(); 
[X, k] = dft(a);
[A, tf] = myFilter(a, t); 
[XF, n] = dft(A'); 

figure(1);
plot_hi_res(k, abs(X), '.', 'Frequency Spectrum of X');
xlabel('\Omega (rad/sample)')                                                                           
ylabel('|X(\Omega)|')
print_hi_res('frequency_spectrum_unfiltered');      
figure(2)
plot_hi_res(n, abs(XF), '.', 'Frequency Spectrum of X After Filtering');
xlabel('\Omega (rad/sample)')                                                                           
ylabel('|X(\Omega)|')     
print_hi_res('frequency_spectrum_filtered'); 
