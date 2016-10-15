function [x,n] = impulse_response()
	% specify the cutoff frequency
	wc = 0.35;

	% create impulse response
	h = @(n) (wc/pi)*sinc((wc*n)/pi);
	n = -15:15;
	x = h(n); 
