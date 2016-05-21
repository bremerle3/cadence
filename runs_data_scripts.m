A = csvread('ramp_modulated.matlab');
Y = A(:,2);
M = tsmovavg(Y, 's', 8000, 1);
xsize = size(M,1);
x = linspace(0, xsize-1, xsize);
plot(x,M);
title('real ramp vs. demodulated SD');
real_ramp = linspace(0,1,xsize);
hold on;
plot(x,real_ramp);
ramp_diff = M - real_ramp';
plot(ramp_diff);
legend('Demod', 'Real Ramp', 'Diff', 'Location', 'Northwest');
ENOB1 = -log2((max(ramp_diff) - min(ramp_diff))/100);






figure;
plot(x,real_ramp);
title('real ramp vs. shifted SD demod');
hold on;
plot(M+.2);
shifted_diff = M+.2 - real_ramp';
plot(shifted_diff);
legend('Shifted demod', 'Real Ramp', 'Diff', 'Location', 'Northwest');
ENOB2 = -log2((max(shifted_diff) - min(shifted_diff))/100);




A = csvread('sine_modulated_D.matlab');
sine_modulated = A(:,2);
Msine_modulated = tsmovavg(sine_modulated, 's', 4000, 1);
x = linspace(0, size(Msine_modulated,1)-1, size(Msine_modulated,1));
figure;
plot(x,Msine_modulated);

Cutoff = 5000;
x_cut = x(Cutoff:end);
sin_cut = Msine_modulated(Cutoff:end);
plot(x_cut, sin_cut);
hold on;
xreal = linspace(0, 2*pi, size(sin_cut, 1));
sine_real = sin(xreal);
plot(x_cut, sine_real+2.5);
title('real sin vs. demod sin');
sin_diff = sine_real+2.5 - sin_cut';
ENOB3 = -log2((max(sin_diff) - min(sin_diff))/100);













A = csvread('ramp_modulated2.matlab');
Y = A(:,2);
M = tsmovavg(Y, 's', 8000, 1);
xsize = size(M,1);
x = linspace(0, xsize-1, xsize);
plot(x,M);
title('real ramp vs. demodulated SD');
real_ramp = linspace(0,1,xsize);
hold on;
plot(x,real_ramp);
ramp_diff = M - real_ramp';
plot(ramp_diff);
legend('Demod', 'Real Ramp', 'Diff', 'Location', 'Northwest');
ENOB1 = -log2((max(ramp_diff) - min(ramp_diff))/100);




