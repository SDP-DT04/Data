function [A, t] = myFilter(a, t)
	h = impulse_response(); 
	t = t(1:length(t)-length(h));
	N = length(a) - length(h);
	A = zeros(1,N); 
	
	for i = 1:N	
		for j = 1:length(h)
			A(i) = A(i) +  h(j)*a(j+i-1); 
		end
	end
end	
