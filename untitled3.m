tBEG = 0.0;

tEND = 4 * pi;

u0 = [ 1., 0. ];

tau = 0.01;

[tRK, uRK] = RungeKutta( u0, tBEG, tEND, tau );

plot( tRK, uRK(:,1) );