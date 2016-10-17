function [a, t] = accel_data()
	front = 2200; 
	tail = 7700; 
	axis = 4; 

	filename = '../Acceleration_Data/bucket_test.csv';
	A = csvread(filename); 

	a = A(front:tail, axis);
	t = A(front:tail, 1);
	figure(1);
	plot_hi_res(1:length(a), a, '-', 'a');
	print_hi_res('a'); 
