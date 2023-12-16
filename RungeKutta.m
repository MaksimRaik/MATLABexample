function [arg, fun_value] = RungeKutta( fun0, tBEG, tEND, tau )

    function f_out = Fun( u0, t )

        f1 = u0(2);

        f2 = -sin(u0(1));

        f_out = [ f1, f2 ];

    end

    function k = k_values(t, u, tau)

        k  = zeros( 4, size(u,2) );

        k(1,:) = Fun(u, t);

        k(2,:) = Fun(u + tau .* k(1,:) .* 0.5, t + tau * 0.5);

        k(3,:) = Fun(u + tau .* k(2,:) .* 0.5, t + tau * 0.5);

        k(4,:) = Fun( u + tau .* k(3,:), t + tau );

        disp( k )

    end

    arg = linspace(tBEG, tEND, (tEND - tBEG) / tau);

    fun_value = zeros( size(arg,2), 2 );

    fun_value(1,:) = fun0;

    for i = 2:size(arg,2)

        k = k_values( arg(i - 1), fun_value(i - 1,:), tau );

        C = tau * ( k(1,:) + 2 * k(2,:) + 2 * k(3,:) + k(4,:) ) ./ 6;

        fun_value( i,: ) = fun_value( i - 1,: ) + C;

    end        

end



