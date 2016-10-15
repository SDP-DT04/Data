function y = integrate(x, t)
	% vector to hold the integral 
	% assume F(1) is zero (initial condition)
    N = numel(x);
	y = zeros(1, N);
	for i = 1:N-1
		dt = t(i+1) - t(i);
 		y(i+1) = (dt/2)*x(i+1) + (dt/2)*x(i) + y(i);
	end
end	
