function F = integrate(f, t)
	% vector to hold the integral 
	% assume F(1) is zero (initial condition)
    N = numel(f);
	F = zeros(1, N);
	for i = 1:N-1
 		F(i+1) = F(i) + (t(i+1)-t(i)) * f(i+1);
	end
end	
