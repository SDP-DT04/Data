function F = lowpass(f)
	
    N = numel(f);
	F = zeros(1, N);
	B = 0.125;
	for i=1:N-1
		F(i+1) = B* f(i+1) + (1-B)*F(i);i
	end
end
