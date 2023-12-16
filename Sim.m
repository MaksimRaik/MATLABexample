function I = Sim( f, h )

S = 0;

for i = 1:size(f,2) / 2 - 2

    S = S + h * ( f(2*i-1) + 4 * f( 2*i + 1 -1 ) + f( 2*i + 2 - 1 ) ) / 3;

end

I = S;

end