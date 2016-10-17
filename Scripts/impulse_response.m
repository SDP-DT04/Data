function [x,n] = impulse_response()
	% specify the cutoff frequency
	wc = 0.35;

	% create impulse response 
	h = @(n, N) (wc/pi)*sinc((wc*(n-(N/2)))/pi);
	n = 0:40;
	N = length(n); 

	% create a hamming window
	alpha = 0.5;
	w = alpha - (1-alpha)*cos((2*pi)/(N-1)*n);

	% apply the window 
	x = h(n, N).* (alpha - (1-alpha)*cos((2*pi)/(N-1)*n)); 
