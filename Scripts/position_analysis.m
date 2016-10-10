[a,t] = accel_data(); 
[A,t] = myFilter(a, t);
v = integrate(A, t); 
p = integrate(v, t); 

figure(2); 
subplot(3,1,1);
plot_hi_res(t, A, '-', 'acceleration'); 
subplot(3,1,2); 
plot_hi_res(t, v, '-', 'velocity');
subplot(3,1,3); 
plot_hi_res(t, p, '-', 'position'); 

print_hi_res('position_analysis'); 
