filename = '../Acceleration_Data/fly_machine.csv';

% read csv file into a matrix
M = csvread(filename);

time = M(:,[1]);
accel = M(:,[4]);

% center at zero and filter
accelFiltered = medfilt1(accel, 10);
offset = (0) - mean(accelFiltered); 
accelFiltered = accelFiltered + offset;

velocity = integrate(accelFiltered, time);
position = integrate(velocity, time);
max(position)
fig = figure(1);
subplot(3,1,1)
plot(time, accelFiltered)
subplot(3,1,2)
plot(time, velocity)
subplot(3,1,3)
plot(time, position)
saveas(fig, 'figure1.png');

