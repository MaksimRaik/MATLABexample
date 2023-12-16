[t, u] = ode45(@(t,u) Fun(t,u), [tBEG,tEND], u0 )

plot( t, u(:,1))

function f_out = Fun( t, u )

    f1 = u(2);

    f2 = -sin(u(1));

    f_out = [ f1; f2 ]

end

