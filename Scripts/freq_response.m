% get the  accel data set
[a, t] = accel_data();

[X, k] = dft(a); 

% plot the frequency response
fig = figure(3);
subplot(2,1,1);
plot_hi_res(k, abs(X),'-', '|X(w)|');
subplot(2,1,2);
plot_hi_res(k, imag(X), '-', 'angle[X(w)]');
print_hi_res('freq_response');
