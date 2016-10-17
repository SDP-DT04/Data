[a,t] = accel_data(); 
[A,t] = myFilter(a, t);
%A = a;
v = integrate(A, t); 
v = v + (0 - mean(v));
p = integrate(v, t); 
max(p)
figure(2); 
subplot(3,1,1);
plot_hi_res(t, A, '.', 'acceleration');
ylabel('acceleration (m/s2)')
xlabel('time (s)')      
subplot(3,1,2); 
plot_hi_res(t, v, '.', 'velocity');
ylabel('velocity (m/s)')
xlabel('time (s)')      
subplot(3,1,3); 
plot_hi_res(t, p, '.', 'position'); 
ylabel('position (m)')
xlabel('time (s)')      
print_hi_res('position_analysis'); 
