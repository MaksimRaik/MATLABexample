x = linspace(1, 10, 100)

s = sin(x)

f = sin(x) ./ x

%
% Tr( f, x(2) - x(1) )

Sim( f, x(2) - x(1) )

fun = @(x) sin(x) ./ x

integral(fun,1,10)