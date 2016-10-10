function [X,h] = dft(x)
	N = length(x);
	k = 0:N-1;
	n = 0:N-1;
	 
	X =  exp((-pi*j*(n'*k))/N) * x;
	h = 0:(pi)/(N-1):pi;	
